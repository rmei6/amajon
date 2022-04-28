import ProductIndex from "./product_index";
import { connect } from "react-redux";

const mapStateToProps = (state) => ({
    products: Object.values(state.entities.products)
})

// const mapDispatchToProps = (dispatch) => ({

// })

// export default connect(mapStateToProps,mapDispatchToProps)(ProductIndex);
export default connect(mapStateToProps,null)(ProductIndex);