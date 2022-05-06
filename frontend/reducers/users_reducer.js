import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";
import { ADD_CART, RECEIVE_ITEMS, UPDATE_CART } from "../actions/cart_actions";

const usersReducer = (state = {}, action) => {
    Object.freeze(state) 
    switch(action.type){
        case RECEIVE_CURRENT_USER: 
            return  Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
        case LOGOUT_CURRENT_USER:
            return {};
        case ADD_CART:
            var nextState = Object.assign({},state);
            nextState[action.item.user_id].cart.push(action.item.product_id);
            nextState[action.item.user_id].cartCount += action.item.quantity;
            return nextState;
        case RECEIVE_ITEMS:
            return Object.assign({},state,{'cart': action.items});
        case UPDATE_CART:
            const user_id = action.quantity.id;
            const quantity = action.quantity.cartCount;
            var nextState = Object.assign({},state);
            nextState[user_id].quantity = quantity;
            return nextState;
        default:
            return state; 
    }
}; 

export default usersReducer