import { connect } from "react-redux";
import { fetchProduct, updateProduct } from "../../actions/products_actions";
import { getReview, updateReview } from "../../actions/review_actions";
import ReviewForm from "./review_form";

const mapStateToProps = (state,ownProps) => {
  const currentUser = state.entities.users[state.session.id]
  return {
    product: state.entities.reviews.product,
    review: state.entities.reviews.review,
    cart: currentUser ? currentUser.cart : [],
    currentUser: currentUser,
    formType: 'edit'
  }
}

const mapDispatchToProps = dispatch => ({
  fetchProduct: id => dispatch(fetchProduct(id)),
  updateProduct: id => dispatch(updateProduct(id)),
  getReview: id => dispatch(getReview(id)),
  updateReview: (review) => dispatch(updateReview(review))
})

export default connect(mapStateToProps,mapDispatchToProps)(ReviewForm);