import React, { useState } from "react";

const Dropdown = ({product, updateCart, quantity}) => {
    const [isActive, setIsActive] = useState(false);
    // const options = ["0 (Delete)","1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
    const options = ["0 (Delete)"];
    if(quantity >= 10){
        const limit = Math.ceil(quantity * 1.5);
        for(let i = 1; i <= limit; i++){
            options.push(i.toString())
        }
    }else{
        for(let i = 1; i < 11; i++){
            options.push(i.toString())
        }
    }
    debugger;
    document.addEventListener("click", (e) => {        
        if (e.target.className !== "dropdown"  && e.target.className !== "down-arrow") { 
            setIsActive(false) 
        }
    })
    return (
        <div className="quantity-selector" 
            onClick={(e) => (
                setIsActive(!isActive)
            )}
        >
            <div className="dropdown" >
                <span className="dropdown">Qty: </span>
                <span className="dropdown">{quantity}</span>
                <div className="dropdown-icon">
                    <span className="down-arrow">&#8964;</span>
                </div>
            </div>
            {
            isActive && (
                <div className="dropdown-options">
                    {options.map((option)=> (
                        <div onClick={() => {
                            debugger;
                            if (parseInt(option) === quantity ){
                                return option
                            }else{
                                option = parseInt(option) - quantity 
                            }
                            debugger;
                            option = (option === "0 (Delete)") ? 0 : parseInt(option)
                            updateCart({ product_id: product.id, quantity: option})
                        }} 
                        className="dropdown-item" key={option}>
                            {option}
                        </div>
                    ))}
                </div>
                )
            }
        </div>
    )
}

export default Dropdown;