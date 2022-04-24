import { withRouter, Route, Redirect } from "react-router-dom"
import { connect } from "react-redux"
import React from 'react'

const Auth = ({ component: Component, path, exact, loggedIn }) => (
    <Route 
        path={path}
        exact={exact}
        render={(props) => 
        loggedIn ? (<Redirect to='/' />
        ) : (
        <Component {...props} />
        )}
    />
)

const mapStateToProps = (state) => {
    return{
        loggedIn: Boolean(state.session.id)
    }
}

export const AuthRoute = withRouter(connect(mapStateToProps, null)(Auth))