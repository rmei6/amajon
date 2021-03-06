import { connect } from "react-redux";
import { login } from "../../actions/session_actions";
import SessionForm from "./session_form"

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'Sign-in'
})

const mapDispatchToProps = (dispatch) => ({
    processForm: (formUser) => dispatch(login(formUser)),
    loginDemo: (user) => dispatch(login(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)