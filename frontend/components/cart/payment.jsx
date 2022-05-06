import React from 'react'
import HeaderContainer from '../header/header_container'

class Payment extends React.Component {
    constructor(props){
        super(props);
        this.state = {department:''}
        this.setDepartment = this.setDepartment.bind(this)
    }

    setDepartment(dep){
        // debugger;
        this.setState({department: dep})
    }

    render(){
        return(
            <div>
                <HeaderContainer setDepartment={this.setDepartment}/>
                <div className="sent-order-container">
                    <div className='sent-order-message'>
                        <span className="sent-order-symbol">&#10003;</span>
                        <p>Your order has been placed!</p>
                        <p>Thank You for shopping at Amajon!</p>
                    </div>
                </div>
            </div>
        )
    }
}

export default Payment;