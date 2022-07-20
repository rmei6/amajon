import * as ReviewsUtil from "../util/reviews_util"

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW'
export const REMOVE_REVIEW = 'REMOVE_REVIEW'
export const GET_REVIEW = 'GET_REVIEW'

const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
})

const removeReview = (reviewIds) => ({
  type: REMOVE_REVIEW,
  reviewIds
})

const fetchReview = (review) => ({
  type: GET_REVIEW,
  review
})

export const createReview = (review) => dispatch => {
  return ReviewsUtil.createReview(review)
      .then((newReview) => dispatch(receiveReview(newReview)))
}

export const deleteReview = (reviewIds) => dispatch => {
  debugger;
  return ReviewsUtil.deleteReview(reviewIds[0])
    .then(() => dispatch(removeReview(reviewIds)))
}

export const updateReview = (review) => dispatch => {
  return ReviewsUtil.updateReview(review)
    // .then((updatedReview) => dispatch(removeReview(updatedReview)))
}

export const getReview = (reviewId) => dispatch => {
  return ReviewsUtil.getReview(reviewId)
    .then((review) => dispatch(fetchReview(review)))
}