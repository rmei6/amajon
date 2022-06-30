import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";
import { ADD_CART, RECEIVE_ITEMS, UPDATE_CART } from "../actions/cart_actions";

const usersReducer = (state = {}, action) => {
    Object.freeze(state)
    debugger; 
    switch(action.type){
        case RECEIVE_CURRENT_USER: 
            debugger;
            let num;
            let num1;
            let num2;
            return  Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
        case LOGOUT_CURRENT_USER:
            return {};
        case ADD_CART:
            var nextState = Object.assign({},state);
            debugger;
            nextState[action.item.user_id].cart.push(action.item.product_id);
            nextState[action.item.user_id].cartCount += action.item.quantity;
            //update nextState['cart'] to have quantity and item
            return nextState;
        case RECEIVE_ITEMS:
            debugger;
            return Object.assign({},state,{'cart': action.items});
            //don't do this action or find way to filter cart by user
            //maybe set state to user.carts on login
        case UPDATE_CART:
            debugger;
            var nextState = Object.assign({},state);
            const user_id = action.quantity.id;
            const quantity = action.quantity.cartCount;
            nextState[user_id].cartCount = quantity;
            nextState[user_id].cart = action.quantity.cart;
            //update nextState['cart'] to have quantity and item
            return nextState;
        default:
            return state; 
    }
}; 

export default usersReducer