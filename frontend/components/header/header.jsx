import React from "react";
import { Link } from "react-router-dom";
import GreetingContainer from "../greeting/greeting_container";
import Nav from "./nav";


class Header extends React.Component {
    constructor(props){
        super(props);
        this.state = {search: ''}
        this.setSearchTerm = this.setSearchTerm.bind(this)
        // this.search = this.search.bind(this)
    }

    setSearchTerm(){
        return(e) => {
            e.preventDefault()
            this.setState({search: e.currentTarget.value.split(' ').join('+')})
        }
    }

    // search(e){
    //     e.preventDefault();
    //     let search = this.state.search.split(' ').join('+')

    // }

    render(){
        // debugger;
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
                        <input className="search-bar-input" type="text" onChange={this.setSearchTerm()}/>
                        {/* <button onClick={this.search}>Search</button> */}
                        <Link to={`/search/${this.state.search}`}><button className="search-button">Search</button></Link>
                    </div>
                    <div className="region">
                        <p className="region-img">&#127482;&#127480;</p>
                    </div>
                    <GreetingContainer />
                    <div className="returns">
                        <p>Returns</p>
                        <p>& Orders</p>
                    </div>
                    <Link to={'/checkout'} className="cart-link">
                        <div className="cart-container">
                            <div className="cart-icon-container">
                                <span className='cartcount'>{this.props.cartCount ?  this.props.cartCount : 0}</span>
                                <img className="cart-icon" src={window.cartUrl} alt="" />
                            </div>
                        {/* <p className="cart">Cart</p> */}
                        </div>
                    </Link>
                </div>
                <Nav setDepartment={this.props.setDepartment}/>
            </div>
        )
    }
}

export default Header;