import React from "react";
import { Route } from "react-router-dom";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import HeaderContainer from "./header/header_container";
import SearchContainer from "./product/search_container";
import ProductShowContainer from "./product/product_show_container";
import { AuthRoute } from "../util/route_util";
import { Switch } from "react-router-dom";
// import amajon_logo from '../../app/assets/images/amajon_logo.png';

// const home_path = new RegExp('^(?!signup$|login$)')
// Tried to use regular expressions
const department_paths = ['/beauty','/food-and-groceries','/kitchen','/clothing,-shoes-and-jewelry','/garden','/toys-and-games','/traditional','/health','/art']

const App = () => {
  // debugger;
  return (
      <div>
        {/* <header> */}
          {/* <img src={amajon_logo} /> */}
          {/* <HeaderContainer /> */}
          {/* <img className="home-logo" src={require('../../app/assets/images/amajonlogowhite.png')} alt="Amajon"/> */}
        {/* </header> */}
        {/* <Switch> */}
            {/* Tried to match current path from within app */}
        {/* {(window.location.href.slice(-6) !== 'signin' && window.location.href.slice(-5) !== 'login') ?  */}
          <Route path='/' component={HeaderContainer} />
          {/* <Route exact path='/' component={BodyContainer} /> */}
          <AuthRoute path="/signup" component={SignupFormContainer} />
          <AuthRoute path="/login" component={LoginFormContainer} />
          <Route path="/products/:id" component={ProductShowContainer} />
          <Route exact path="/products" component={SearchContainer} />
          {/* <Route exact path={department_paths} component={ProductIndexContainer}/> */}
          {/* <Route path='/' component={FooterContainer} /> */}

        {/* </Switch> */}
      </div>
    )
};

export default App;