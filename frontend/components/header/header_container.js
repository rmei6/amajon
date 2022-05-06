import { connect } from "react-redux";
import Header from "./header";

const mapStateToProps = (state) => {
    var currentUser = state.entities.users[state.session.id];
    // debugger;
    return {cartCount: currentUser ? currentUser.cartCount : 0}
}

export default connect(mapStateToProps,null)(Header);