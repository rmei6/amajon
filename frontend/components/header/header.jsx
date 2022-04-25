import React from "react";
import { Link } from "react-router-dom";
import GreetingContainer from "../greeting/greeting_container";


class Header extends React.Component {
    constructor(props){
        super(props);
    }

    render(){
        return(
            <div className="header">
                <Link to='/' className="logo">
                    <img className="home-logo" src={window.whitelogoURL} alt="Amajon"/>
                </Link>
                <p>Search Bar Here</p>
                <GreetingContainer />
                <p>Cart Here</p>
            </div>
        )
    }
}

export default Header;