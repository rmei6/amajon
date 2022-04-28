import React from "react";
import {fetchProducts} from '../../actions/products_actions';
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount(){
        dispatch(this.props.fetchProducts())
    }

    render(){
        // debugger;
        return (
            <div className="product-index">
                {this.props.products.map(product => (
                    // <div key={`product-${product.id}`}>
                    //     <li key={`name-${product.id}`}>Name: {product.name}</li>
                    //     <li key={`description-${product.id}`}>Description: {product.description}</li>
                    //     <li key={`price-${product.id}`}>Price: {product.price}</li>
                    //     <br />
                    // </div>
                    <ProductIndexItem product={product} key={product.id}/>
                ))}
            </div>
        )
    }
}

export default ProductIndex;