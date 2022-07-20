import { GET_REVIEW } from "../actions/review_actions";

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state)
  switch(action.type){
    case GET_REVIEW:
      debugger
      var nextState = Object.assign({},state);
      nextState.review = action.review.review;
      nextState.product = action.review.product;
      return nextState;
    default:
      return state;
  }
};

export default reviewsReducer;