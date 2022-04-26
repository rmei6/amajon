import React from 'react'
import { Link } from 'react-router-dom'

class SessionForm extends React.Component{
    constructor(props){
        super(props)
        this.state = props.formType === 'Sign-in' ? {
            email: '',
            password: ''
            } :
            {
                email:"",
                name:"",
                password:""
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
        // .then(() => this.props.history.push('/'))
    }

    handleDemo(e){
        e.preventDefault()
        let that = this;
        if (this.props.formType === 'Create Account'){
            this.setState({'name': 'Demo','email': 'demo@gmail.com', 'password': 'password'}, () => {
                that.props.loginDemo(that.state)
                // .then(() => this.props.history.push('/'))
            });
        }else{
            this.setState({'email': 'demo@gmail.com', 'password': 'password'}, () => {
                that.props.loginDemo(that.state)
                // .then(() => this.props.history.push('/'))
            });
        }
    }

    render(){
        const link = this.props.formType === 'Create Account' ? (
            <Link  to='/login'>
                <button className='account-button'>Click here to Sign-in</button>
            </Link>
        ): (
        <Link to='/signup'>
            <button className='account-button'>Create an Account</button>
        </Link>
        )
            // debugger

        const errors = this.props.errors.length > 0 ? (
            <div className='error-box'>
                <div className='error-header'>
                    <p className='error-symbol'>&#9888;</p>
                    <p className='error-message'> There was a problem</p>
                </div>
                <div>
                    <ul className='error-list'>
                    {this.props.errors.map((err, idx) => <li key={idx}>{err}</li>)}
                    </ul>
                </div>
            </div>
            ) : (null)
        const name_form = this.props.formType === 'Create Account' ? 
            <label className='session-input'>Name:
                <input className="session-text" type="text" value={this.state.name} onChange={this.update('name')}/>
            </label> 
            :
            (null)
        const linkText = this.props.formType === 'Create Account' ? 'Already have an account?' : 'New to Amajon?'
        return(
            <div className='session'>
                <Link to='/' className='logo'>
                    <img className="signin-logo" src={window.blacklogoURL} alt="Amajon"/>
                </Link>
                {errors}
                <div className="form-container">
                    <form onSubmit={this.handleSubmit} className='session-form'>
                    {/* <h2>Welcome to Amajon!</h2> */}
                    <h2 className='form-title'>{this.props.formType}</h2>
                    {name_form}
                    <label className='session-input'>Email:
                        <input className="session-text" type="text" value={this.state.email} onChange={this.update('email')}/>
                    </label>
                    <label className='session-input'>Password:
                        <input className="session-text" type="password" value={this.state.password} onChange={this.update('password')}/>
                    </label>
                    <input className='account-button' type="submit" value={this.props.formType} />
                    <button className="account-button" onClick={this.handleDemo}>Demo</button>
                    </form>
                    <div className='other-options'>
                        <p className='link-text'>{linkText}</p>
                        {link}
                    </div>
                </div>
            </div>
        )
    }
}

export default SessionForm;