import { connect } from "react-redux";
import Main from "./main";

const mapStateToProps = (state) => ({
    cartCount: 0
})

export default connect(mapStateToProps,null)(Main);