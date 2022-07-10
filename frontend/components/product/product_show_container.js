import { connect } from "react-redux";
import { fetchProduct, updateProduct } from "../../actions/products_actions";
import { addItem, updateCart } from "../../actions/cart_actions";
import { createReview, deleteReview, updateReview } from "../../actions/review_actions";
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
    updateProduct: id => dispatch(updateProduct(id)),
    addToCart: (newItem)=>dispatch(addItem(newItem)),
    updateCart: (item)=>dispatch(updateCart(item)),
    createReview: (review)=>dispatch(createReview(review)),
    deleteReview: (reviewId)=>dispatch(deleteReview(reviewId)),
    updateReview: (review)=>dispatch(updateReview(review))

})

export default connect(mapStateToProps,mapDispatchToProps)(ProductShow);

