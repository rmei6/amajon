import { connect } from "react-redux";
import { signup,login } from "../../actions/session_actions";
import SessionForm from "./session_form"

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'Create Account'
})

const mapDispatchToProps = (dispatch) => ({
    processForm: (formUser) => dispatch(signup(formUser)),
    loginDemo: (user) => dispatch(login(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)