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
            <div>
                <div className="result-summary-container">
                    <span className="result-summary">1-{this.props.products.length} of {this.props.products.length} results</span>
                </div>
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
            </div>
        )
    }
}

export default ProductIndex;