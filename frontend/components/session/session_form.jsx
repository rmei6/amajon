import React from 'react'
import { Link } from 'react-router-dom'

class SessionForm extends React.Component{
    constructor(props){
        super(props)
        this.state = props.formType === 'login' ? {
        email: '',
        password: ''
        } :
        {
            email: '',
            name: '',
            password: ''
        };
        // debugger;
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    update(field){
        return e => {
            this.setState({[field]: e.target.value})
        }
    }

    handleSubmit(e){
        e.preventDefault()
        const user = Object.assign({}, this.state);
        this.props.processForm(user)
        .then(() => this.props.history.push('/'))
    }

    render(){
        const link = this.props.formType === 'signup' ? (
            <Link to='/login'>log in instead</Link>
        ): (
        <Link to='/signup'>sign up instead</Link>
        )

        const errors = this.props.errors ? (
            <ul>
            {this.props.errors.map((err, idx) => <li key={idx}>{err}</li>)}
            </ul>
            ) : (null)
        const name_form = this.props.formType === 'signup' ? 
            <label>Name:
                <input type="text" value={this.state.name} onChange={this.update('name')}/>
            </label> 
            :
            (null)
        return(

            <div className="form-container">
                <form onSubmit={this.handleSubmit} className='session-form'>
                <h2>Welcome to Amajon!</h2>
                <h2>Please {this.props.formType} or {link}</h2>
                {errors}
                {name_form}
                <label>Email:
                    <input type="text" value={this.state.email} onChange={this.update('email')}/>
                </label>
                <label>Password:
                    <input type="password" value={this.state.password} onChange={this.update('password')}/>
                </label>
                <input type="submit" value={this.props.formType} />
                </form>
            </div>
        )
    }
}

export default SessionForm;