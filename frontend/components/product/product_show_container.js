import { connect } from "react-redux";
import { fetchProduct } from "../../actions/products_actions";
import ProductShow from "./product_show";

const mapStateToProps = (state,ownProps) => {
    // debugger;
    // dispatch()
    return {
        product: state.entities.products[ownProps.match.params.id]
    }
}

const mapDispatchToProps = dispatch => ({
    fetchProduct: id => dispatch(fetchProduct(id))

})

export default connect(mapStateToProps,mapDispatchToProps)(ProductShow);

