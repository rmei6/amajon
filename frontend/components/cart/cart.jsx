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
        this.props.cart.map( product => {
            const clear = { product_id: product.id, quantity: 0 }         
            this.props.updateCart(clear)
        })
    }

    render(){
        const {products, cartCount, updateCart, cart} = this.props
        let totalPrice = 0.0;
        if (cart.length === 0) {
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
        const items = cart.map((product, idx)=>{
            totalPrice += (product.price * product.quantity)
            // debugger;
            return ( product && <CartItems product={product} key={idx} updateCart={updateCart} />)
        })
            // debugger;
        return (
            <div>
                <HeaderContainer setDepartment={this.setDepartment}/>
                <div className="cart-container">
                    <div className="cart-items">
                        <div className="cart-title"><h1>Shopping Cart</h1></div>
                        <div className="cart-columns">
                            <a className="cart-deselect-options" href="">Deselect all Items</a>
                            <div className="column-price"><span>Price</span></div>
                        </div>
                        {items}
                    </div>
                    <div className="cart-checkout">
                        <div className=" cart-price-container">
                            <span className="cart-price-label">Subtotal {`(${cartCount} Items)`}:</span>
                            <span className="cart-price"> ${totalPrice.toLocaleString('en-US', { maximumFractionDigits: 2 })}</span>
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