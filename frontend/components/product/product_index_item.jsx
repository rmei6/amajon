import React from "react";
import { Link } from "react-router-dom/cjs/react-router-dom.min";

const ProductIndexItem = ({product}) => (
    <div className="product-index-item">
            <Link className="product-index-item-img" to={`/products/${product.id}`}>
                <p>Image Placeholder</p>
            </Link>
            <Link className="product-index-item-name" to={`/products/${product.id}`}>
                <p>{product.name}</p>
            </Link>
            <Link className="product-index-item-price" to={`/products/${product.id}`}>
                <p>${product.price}</p>
            </Link>
        <p>Get it in 1 week!</p>
        <br />
        <p>FREE shipping by Amajon</p>
    </div>
)

export default ProductIndexItem;

