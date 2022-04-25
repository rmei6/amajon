import React from "react";
import { Route } from "react-router-dom";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import { AuthRoute } from "../util/route_util";
// import amajon_logo from '../../app/assets/images/amajon_logo.png';

const App = () => (
  <div>
    <header>
      {/* <img src={amajon_logo} /> */}
      <img className="home-logo" src={window.whitelogoURL} alt="Amajon"/>
      {/* <img className="home-logo" src={require('../../app/assets/images/amajonlogowhite.png')} alt="Amajon"/> */}
    </header>
    <GreetingContainer />

    <AuthRoute path="/login" component={LoginFormContainer} />
    <AuthRoute path="/signup" component={SignupFormContainer} />
    
  </div>
);

export default App;