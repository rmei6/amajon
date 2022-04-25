import { connect } from "react-redux";
import Header from "./header";

const mapStateToProps = (state) => ({
    cartCount: 0
})

export default connect(mapStateToProps,null)(Header);