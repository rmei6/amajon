import { connect } from "react-redux";
import { fetchProduct } from "../../actions/products_actions";
import { addItem, updateCart } from "../../actions/cart_actions";
import ProductShow from "./product_show";

const mapStateToProps = (state,ownProps) => {
    // debugger;
    // dispatch()
    const currentUser = state.entities.users[state.session.id]
    return {
        product: state.entities.products[ownProps.match.params.id],
        cart: currentUser ? currentUser.cart : [],
        currentUser: currentUser
    }
}

const mapDispatchToProps = dispatch => ({
    fetchProduct: id => dispatch(fetchProduct(id)),
    addToCart: (newItem)=>dispatch(addItem(newItem)),
    updateCart: (item)=>dispatch(updateCart(item)),

})

export default connect(mapStateToProps,mapDispatchToProps)(ProductShow);

