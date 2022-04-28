import React from "react";
import { Link } from "react-router-dom";
import GreetingContainer from "../greeting/greeting_container";
import Nav from "./nav";


class Header extends React.Component {
    constructor(props){
        super(props);
    }

    render(){
        return(
            <div>
                <div className="header">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></link>
                    <Link to='/' className="logo">
                        <img className="home-logo" src={window.whitelogoURL} alt="Amajon"/>
                    </Link>
                    {/* <p className="search-bar">Search Bar Here</p> */}
                    <div className="deliver">
                        <p className="deliver-message">Deliver to</p>
                        <div>
                        <p className="deliver-location"><i className="fa fa-map-marker"></i> Your Location</p>
                        </div>
                    </div>
                    <div className="search-bar">
                        <label>Search
                            <input className="search-bar-input" type="text" />
                        </label>
                    </div>
                    <div className="region">
                        <p className="region-img">&#127482;&#127480;</p>
                    </div>
                    <GreetingContainer />
                    <div className="returns">
                        <p>Returns</p>
                        <p>& Orders</p>
                    </div>
                    <p className="cart">Cart Here</p>
                </div>
                <Nav />
            </div>
        )
    }
}

export default Header;