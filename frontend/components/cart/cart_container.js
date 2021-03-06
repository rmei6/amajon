import { connect } from "react-redux";
import Cart from "./cart";
import {fetchCart, updateCart} from '../../actions/cart_actions'

const mapStateToProps = (state) => {
    const currentUserId = state.session.id
    debugger;
    // const items = state.entities.users.cart ? Object.values(state.entities.users.cart) : []
    const items = state.entities.users.cart ? state.entities.users.cart : []
    return {
        cart: items,
        products: Object.values(state.entities.products),
        cartCount: state.entities.users[currentUserId].cartCount
    }
 }

 const mapDispatchToProps = (dispatch) => ({
     fetchCart: () => dispatch(fetchCart()),
     updateCart: (item) => dispatch(updateCart(item))
 })

 //add delete cart option
 
 export default connect(mapStateToProps, mapDispatchToProps)(Cart)