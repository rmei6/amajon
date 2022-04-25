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
        this.handleDemo = this.handleDemo.bind(this)
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

    handleDemo(e){
        e.preventDefault()
        if (this.props.formType === 'signup'){
            this.setState({name: 'Demo',email: 'demo@gmail.com', password: 'password'});
        }else{
            this.setState({email: 'demo@gmail.com', password: 'password'});
        }
        this.props.loginDemo(this.state);
    }

    render(){
        const link = this.props.formType === 'signup' ? (
            <Link to='/login'>Click here to login</Link>
        ): (
        <Link to='/signup'>Click here to signup</Link>
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
        const linkText = this.props.formType === 'signup' ? 'Already have an account?' : 'New to Amajon?'
        return(
            <div>
                <Link to='/'>Amajon</Link>
                <div className="form-container">
                    <form onSubmit={this.handleSubmit} className='session-form'>
                    {/* <h2>Welcome to Amajon!</h2> */}
                    <h2>{this.props.formType}</h2>
                    {errors}
                    {name_form}
                    <label>Email:
                        <input type="text" value={this.state.email} onChange={this.update('email')}/>
                    </label>
                    <label>Password:
                        <input type="password" value={this.state.password} onChange={this.update('password')}/>
                    </label>
                    <input type="submit" value={this.props.formType} />
                    <button onClick={this.handleDemo}>Demo</button>
                    </form>
                    <div>
                        <p>{linkText}</p>
                        {link}
                    </div>
                </div>
            </div>
        )
    }
}

export default SessionForm;