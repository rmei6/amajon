import { connect } from "react-redux";
import { signup,login } from "../../actions/session_actions";
import SessionForm from "./session_form"

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'signup'
})

const mapDispatchToProps = (dispatch) => ({
    processForm: (formUser) => dispatch(signup(formUser)),
    loginDemo: (user) => dispatch(login(user))
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)