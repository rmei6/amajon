import React from "react";
import HeaderContainer from "../header/header_container";
import ProductIndexItem from "./product_index_item";

class DetailedSearch extends React.Component {
  constructor(props){
    super(props)
    this.state = {department: ''}
    this.setDepartment = this.setDepartment.bind(this)
    this.filterProducts = this.filterProducts.bind(this)
  }

  setDepartment(dep){
    // debugger;
    this.setState({department: dep})
  }

  componentDidMount(){
    this.props.fetchProducts('products')
  }

  filterProducts(search_term){
    debugger;
    let products = this.props.products
    return products.filter(product => product.name.toLowerCase().includes(search_term) || product.description.toLowerCase().includes(search_term))
  }

  render(){
    let url = window.location.href
    let searchterm = url.slice(url.indexOf('#') + 9).split('+').join(' ').toLowerCase();
    let filteredProducts = this.filterProducts(searchterm);
    let productsFound = filteredProducts.length != 0;
    const items = productsFound ? filteredProducts.map(product => (
      <ProductIndexItem product={product} key={product.id}/>
    )) : <span>No Products Found</span>
    const summary = productsFound ? 
    <div className="result-summary-container">
      <span className="result-summary">1 - {filteredProducts.length} of {filteredProducts.length} results</span>
    </div> : ''
    debugger;
    return (
      <div className="index-container">
        <HeaderContainer setDepartment = {this.setDepartment}/>
        {summary}
        <div className="product-index">
          {items}
        </div>
      </div>
    )
  }

}

export default DetailedSearch;