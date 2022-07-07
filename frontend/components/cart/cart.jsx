import React from "react";
import { NavLink } from "react-router-dom";
import HeaderContainer from "../header/header_container";
import CartItems from './cart_items'

class Cart extends React.Component{ //have to refactor cart and checkout
    constructor(props){
        super(props)
        this.state = {department:''}
        this.setDepartment = this.setDepartment.bind(this)
        this.handleCheckOut = this.handleCheckOut.bind(this)
        //set state so that cart reloads when deleting stuff
    }

    setDepartment(dep){
        // debugger;
        this.setState({department: dep})
    }

    componentDidMount(){
        this.props.fetchCart()
    }

    componentDidUpdate(prevState, state){
        if(this.props.cartCount !== prevState.cartCount){
            this.props.fetchCart()
        }
    }

    handleCheckOut(e){
        let items_num = Object.values(this.props.cart).length
        const products_show = Object.values(this.props.cart).splice(0,items_num/2)
        products_show.map( product => {
            const clear = { product_id: product.id, quantity: 0 }         
            this.props.updateCart(clear)
        })
        this.props.fetchCart()
    }

    render(){
        const {products, cartCount, updateCart, cart, fetchCart} = this.props
        let totalPrice = 0.0;
        if (Object.values(cart).length === 0) {
            return (
                <div>
                    <HeaderContainer setDepartment={this.setDepartment}/>
                    <div className="empty-cart-container">
                        <div className="empty-cart-message">
                            <span>Your cart is empty, keep shopping!</span>
                            <NavLink className='products-link' to='/products'>Continue Shopping</NavLink>
                        </div>
                    </div>
                </div>
            )
        }
        debugger;
        //need to have cart be array of objects with quantity and item
        let items_num = Object.values(cart).length
        const products_show = Object.values(cart).splice(0,items_num/2)
        const carts = Object.values(cart).splice(items_num/2)
        carts.map((item) => {
            debugger;
            let price = cart[item.product_id].price
            totalPrice += (price * item.quantity)
        })
        const items = products_show.map((product, idx)=>{
            // totalPrice += (product.price * product.quantity)
            // totalPrice += product.price
            // debugger;
            let quantity = 0;
            carts.forEach(cart => {
                if(cart.product_id === product.id){
                    quantity = cart.quantity
                }
            })
            return ( product && <CartItems product={product} key={idx} updateCart={updateCart} quantity={quantity} fetchCart={fetchCart}/>)
        })
        totalPrice = totalPrice.toLocaleString('en-US', { maximumFractionDigits: 2 });
        let price = totalPrice;
        debugger;
        if (!totalPrice.includes('.')) {
            price = `${totalPrice}.00`;
        }else if (totalPrice[totalPrice.length - 2] === '.'){
            price = `${totalPrice}0`;
        }
            // debugger;
        return (
            <div>
                <HeaderContainer setDepartment={this.setDepartment}/>
                <div className="cart-container">
                    <div className="cart-items">
                        <div className="cart-title"><h1>Shopping Cart</h1></div>
                        <div className="cart-columns">
                            {/* <a className="cart-deselect-options" href="">Deselect all Items</a> */}
                            <div className="column-price"><span>Price</span></div>
                            {/* <div className="column-price"><span>Quantity</span></div> */}
                        </div>
                        {items}
                    </div>
                    <div className="cart-checkout">
                        <div className=" cart-price-container">
                            <span className="cart-price-label">Subtotal {`(${cartCount} Items)`}:</span>
                            <span className="cart-price"> ${price}</span>
                        </div>
                        <NavLink to='/payment' onClick={this.handleCheckOut}>
                            <button  className="checkout-button">Place your order</button>
                        </NavLink>
                    </div>
                </div>
            </div>
        )
    }
}

export default Cart;