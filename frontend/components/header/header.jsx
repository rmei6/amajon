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
                {/* <p className="search-bar">Search Bar Here</p> */}
                <label className="search-bar">Search
                    <input type="text" />
                </label>
                <GreetingContainer />
                <p className="cart">Cart Here</p>
            </div>
        )
    }
}

export default Header;