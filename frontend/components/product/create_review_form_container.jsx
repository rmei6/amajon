import { connect } from "react-redux";
import { fetchProduct, updateProduct } from "../../actions/products_actions";
import { createReview } from "../../actions/review_actions";
import ReviewForm from "./review_form";

const mapStateToProps = (state,ownProps) => {
    // debugger;
    // dispatch()
    const currentUser = state.entities.users[state.session.id]
    return {
        product: state.entities.products[ownProps.match.params.id],
        cart: currentUser ? currentUser.cart : [],
        currentUser: currentUser,
        formType: 'create'
    }
}

const mapDispatchToProps = dispatch => ({
    fetchProduct: id => dispatch(fetchProduct(id)),
    updateProduct: id => dispatch(updateProduct(id)),
    createReview: (review)=>dispatch(createReview(review))
})

export default connect(mapStateToProps,mapDispatchToProps)(ReviewForm);