import React from "react";
import { Link } from "react-router-dom/cjs/react-router-dom.min";


const ProductIndexItem = ({product}) => {
    var imageurl;
    if (product.id % 3 === 0){
        imageurl = window.longproductURL;
    }else if (product.id % 3 === 1){
        imageurl = window.squareproductURL;
    }else{
        imageurl = window.flatproductURL;
    }
    return (
        <div className="product-index-item">
            <div className="index-img-container">
                <Link to={`/products/${product.id}`}>
                    <img className="product-index-item-img" src={imageurl} />
                </Link>
            </div>
            <div className="product-index-item-name-container">
                <Link className="product-index-item-name" to={`/products/${product.id}`}>
                    <span>{product.name}</span>
                </Link>
            </div>
            <div className="product-index-item-price-container">
                <Link className="product-index-item-price" to={`/products/${product.id}`}>
                    <span>${product.price}</span>
                </Link>
            </div>
            <div className="product-index-item-shipping-containner">
                <span>Get it in 1 week!</span>
                <span>FREE shipping by Amajon</span>
            </div>
        </div>
    )
}

export default ProductIndexItem;

