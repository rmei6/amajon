import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";
import { ADD_CART, RECEIVE_ITEMS, UPDATE_CART } from "../actions/cart_actions";
import { RECEIVE_REVIEW, REMOVE_REVIEW} from "../actions/review_actions";

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
            var user_id = action.quantity.id;
            var quantity = action.quantity.cartCount;
            nextState[user_id].cartCount = quantity;
            nextState[user_id].cart = action.quantity.cart;
            //update nextState['cart'] to have quantity and item
            return nextState;
        case RECEIVE_REVIEW:
            var nextState = Object.assign({},state);
            var user_id = action.review.user_id;
            var product_id = action.review.product_id;
            var review_id = action.review.id;
            nextState[user_id].review_ids.push(review_id);
            nextState[user_id].reviewed_products.push(product_id);
            return nextState;
        case REMOVE_REVIEW:
            var nextState = Object.assign({},state);
            var user_id = action.reviewIds[2];
            var product_id = action.reviewIds[1];
            var review_id = action.reviewIds[0];
            nextState[user_id].review_ids = nextState[user_id].review_ids.filter(id => id != review_id);
            nextState[user_id].reviewed_products = nextState[user_id].reviewed_products.filter(id => id != product_id);
            return nextState;
        default:
            return state; 
    }
}; 

export default usersReducer