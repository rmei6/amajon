import * as ReviewsUtil from "../util/reviews_util"

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW'
export const REMOVE_REVIEW = 'REMOVE_REVIEW'

const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
})

const removeReview = (reviewId) => ({
  type: REMOVE_REVIEW,
  reviewId
})

export const createReview = (review) => dispatch => {
  return ReviewsUtil.createReview(review)
      .then((newReview) => dispatch(receiveReview(newReview)))
}

export const deleteReview = (reviewId) => dispatch => {
  debugger;
  return ReviewsUtil.deleteReview(reviewId)
    .then(() => dispatch(removeReview(reviewId)))
}

export const updateReview = (review) => dispatch => {
  return ReviewsUtil.updateReview(review)
    .then((updatedReview) => dispatch(removeReview(updatedReview)))
}