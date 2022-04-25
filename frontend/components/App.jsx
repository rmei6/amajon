import React from "react";
import { Route } from "react-router-dom";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import HeaderContainer from "./header/header_container";
import { AuthRoute } from "../util/route_util";
import { Switch } from "react-router-dom";
// import amajon_logo from '../../app/assets/images/amajon_logo.png';

const App = () => (
  <div>
    <header>
      {/* <img src={amajon_logo} /> */}
      <HeaderContainer />
      {/* <img className="home-logo" src={require('../../app/assets/images/amajonlogowhite.png')} alt="Amajon"/> */}
    </header>
    <Switch>
      <AuthRoute path="/login" component={LoginFormContainer} />
      <AuthRoute path="/signup" component={SignupFormContainer} />
      {/* <Route path='/' component={Header} /> */}
    </Switch>
    
  </div>
);

export default App;