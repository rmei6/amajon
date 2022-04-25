import React from 'react'
import { Link } from 'react-router-dom';

class Greeting extends React.Component {
    constructor(props){
        super(props);
    }

    render(){
        const { currentUser,logout } = this.props
        const greeting = currentUser ? (
        <div>
            <h2>Hi, {currentUser.name}!</h2>
            <button onClick={logout}>Log out</button>
        </div>
        ) : (
        <div className='header-nav'>
            <h2>Hello, Guest</h2>
            <Link to='/login'>Login</Link> or <Link to='/signup'>Sign Up</Link> 
        </div>
        )
        return(
            <div>
                {greeting}
            </div>
        )
    }
}

export default Greeting;