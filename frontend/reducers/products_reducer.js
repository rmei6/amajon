import { RECEIVE_PRODUCT, RECEIVE_PRODUCTS } from "../actions/products_actions";

const productsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch(action.type){
        case RECEIVE_PRODUCT:
            return action.products
        case RECEIVE_PRODUCTS:
            return Object.assign({},{ [action.product.id] : action.product })
        default:
            return state;
    }
}

export default productsReducer;