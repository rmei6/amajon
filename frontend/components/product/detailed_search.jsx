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
    let search_shown = (<span className="searchterm">"{searchterm}"</span>);
    let filteredProducts = this.filterProducts(searchterm);
    let productsFound = filteredProducts.length != 0;
    const items = productsFound ? <div className="search-product-index">
      <div className="results-title">
        <span className="results-header">RESULTS</span>
        <span className="results-message">Price and other details may vary based on product size and color.</span>
      </div>
      {filteredProducts.map(product => (
      <ProductIndexItem product={product} search={true} key={product.id}/>
      ))}
    </div> : <div className="no-access-message"><span>No Products Found for {search_shown}</span></div>
    const summary = productsFound ? 
    <div className="result-summary-container">
      <span className="result-summary">1 - {filteredProducts.length} of {filteredProducts.length} results for {search_shown}</span>
    </div> : ''
    debugger;
    return (
      <div className="index-container">
        <HeaderContainer setDepartment = {this.setDepartment}/>
        {summary}
        {items}
      </div>
    )
  }

}

export default DetailedSearch;