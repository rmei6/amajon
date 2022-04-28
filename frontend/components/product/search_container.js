import ProductIndex from "./product_index";
import { connect } from "react-redux";
import { fetchProducts } from "../../actions/products_actions";

const mapStateToProps = (state) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = (dispatch) => ({
    fetchProducts: fetchProducts
})

// export default connect(mapStateToProps,mapDispatchToProps)(ProductIndex);
export default connect(mapStateToProps,mapDispatchToProps)(ProductIndex);