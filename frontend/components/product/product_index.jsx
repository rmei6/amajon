import React from "react";
import {fetchProducts} from '../../actions/products_actions';
import ProductIndexItem from "./product_index_item";
import HeaderContainer from "../header/header_container";

class ProductIndex extends React.Component {
    constructor(props){
        super(props)
        this.state = {department: ''}
        this.setDepartment = this.setDepartment.bind(this)
    }

    componentDidMount(){
        // debugger;
        dispatch(this.props.fetchProducts(window.location.href.slice(window.location.href.indexOf('#')+2)))
        // this.props.fetchProducts(window.location.href.slice(window.location.href.indexOf('#')+2))
    }

    componentDidUpdate(){
        // debugger;
        // if(this.props.products.length === 0 || this.props.products[0].department !== this.state.department){
        if (window.location.href.slice(window.location.href.indexOf('#')+2) === 'products'){
            if (this.props.products.length < 154){
                dispatch(this.props.fetchProducts(window.location.href.slice(window.location.href.indexOf('#')+2)))
            }
        }else{
            if(this.props.products.length === 0 || this.props.products.some(product => product.department !== window.location.href.slice(window.location.href.indexOf('#')+2))){
                // debugger;
                dispatch(this.props.fetchProducts(window.location.href.slice(window.location.href.indexOf('#')+2)))
            }
        }
    }

    setDepartment(dep){
        // debugger;
        this.setState({department: dep})
    }

    render(){
        // debugger;
        if(this.props.products.length === 0 || (this.props.products.some(product => product.department !== window.location.href.slice(window.location.href.indexOf('#')+2)) && window.location.href.slice(window.location.href.indexOf('#')+2) !== 'products')){
            return (
                // <div>
                    <HeaderContainer setDepartment = {this.setDepartment}/>
                //     <div className="result-summary-container">
                //         <span className="result-summary">0 - {this.props.products.length} of {this.props.products.length} results</span>
                //     </div>
                // </div>
            )
            // return null;
        // }else if (this.props.products[0].department !== this.state.department){
        //     return null;
        }
        else{
            return (
                <div className="index-container">
                    <HeaderContainer setDepartment = {this.setDepartment}/>
                    <div className="result-summary-container">
                        <span className="result-summary">1 - {this.props.products.length} of {this.props.products.length} results</span>
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
}

export default ProductIndex;