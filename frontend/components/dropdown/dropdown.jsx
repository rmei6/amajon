import React, { useState } from "react";

const Dropdown = ({select, setSelected, product, updateCart}) => {
    const [isActive, setIsActive] = useState(false);
    const options = ["0 (Delete)","1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"];
    document.addEventListener("click", (e) => {        
        if (e.target.className !== "dropdown" && e.target.className.baseVal !== "down-arrow") { 
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
                Qty: {select ? select : product.quantity}
                <div className="dropdown-icon">
                    <span className="down-arrow">&#8964;</span>
                </div>
            </div>
            {isActive && (
                <div className="dropdown-options">
                    {options.map(option=> (
                        <div onClick={() => {
                            setSelected(option)                           
                            if(parseInt(option) < product.quantity) {
                                option = -(product.quantity - parseInt(option))
                            }else if (parseInt(option) === product.quantity ){
                                return option
                            }else{
                                option = parseInt(option) - product.quantity 
                            }
                            option = (option === "0 (Delete)") ? "0" : option
                            updateCart({ product_id: product.id, quantity: option}).then(()=>{
                                setSelected("")
                            })
                        }} 
                        className="dropdown-item" key={option}>
                            {option}
                        </div>
                    ))}
                </div>)
            }
        </div>
    )
}

export default Dropdown;