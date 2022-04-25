import React from 'react'
import { Link } from 'react-router-dom';

class Greeting extends React.Component {
    constructor(props){
        super(props);
    }

    render(){
        const { currentUser,logout } = this.props
        const greeting = currentUser ? (
        <div className='greeting'>
            <h2>Hi, {currentUser.name}!</h2>
            {/* <button onClick={logout}>Log out</button> */}
            <Link to='/' className='logout' onClick={logout}>Log out</Link>
        </div>
        ) : (
        <div className='greeting'>
            <h2>Hello,
            <Link className='login' to='/login'> Sign in</Link> 
            </h2>
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