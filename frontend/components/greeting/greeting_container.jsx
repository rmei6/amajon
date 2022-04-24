import { connect } from "react-redux";
import Greeting from './greeting'
import { logout } from "../../actions/session_actions";

const mapStateToProps = (state) => {
    const { users } = state.entities
    const { id } = state.session
    return {currentUser: users[id]}
}

const mapDispatchToProps = (dispatch) => {
    return{
        logout: () => dispatch(logout())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Greeting)