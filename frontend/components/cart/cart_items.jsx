import React from "react";
import { useState } from "react";
import Dropdown from "../dropdown/dropdown";


const CartItems = ({ product, updateCart })=>{
    const [selected, setSelected] = useState(0);
    return (
        <div className="cart-product">
            <div className="cart-product-info">                       
                <div className="cart-checkbox-container">
                    <div className="item-checkbox">
                        <label>
                            <input className="checkbox" type='checkbox'  />
                        </label>
                    </div>
                    <div className="cart-image-container">
                        <img className="cart-image" src={product.photoUrl}/>
                    </div>
                </div>
                <div className="cart-product-details">
                    <div className='cart-product-name'>
                        <span>{product.name}</span>
                    </div>
                    <span className="in-stock">In stock</span>
                    <div className="returns-container"><span className="free-returns">FREE Returns <span className="return-and">&</span> FREE Delivery</span></div>
                    <div className="shipped-from">Shipped from:
                        <span className="origin"> Amajon</span>
                    </div> 
                    <span className="cart-department-label">Department: <span className="cart-department">{product.department.split('-').join(' ').toUpperCase()}</span></span> 
                    <div className="cart-quantity">
                        <Dropdown select={selected} setSelected={setSelected} product={product} updateCart={updateCart} />
                    </div>                                   
                </div>                                  
            </div>
            <div className="product-price-container">
                <span className="product-price">
                    ${product.price}
                </span>
            </div>
        </div>
    )
}

export default CartItems;