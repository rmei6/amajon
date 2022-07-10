import { connect } from "react-redux";
import { fetchProducts } from "../../actions/products_actions";
import DetailedSearch from "./detailed_search";

const mapStateToProps = (state) => ({
  products: Object.values(state.entities.products)
})

const mapDispatchToProps = (dispatch) => ({
  fetchProducts: (term) => dispatch(fetchProducts(term))
})

export default connect(mapStateToProps,mapDispatchToProps)(DetailedSearch);