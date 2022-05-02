import React from "react";
import { Link } from "react-router-dom";
import HeaderContainer from "../header/header_container";

class ProductShow extends React.Component {
    constructor(props){
        super(props);
    }

    componentDidMount(){
        // debugger;
        this.props.fetchProduct(this.props.match.params.id);
    }

    // componentDidUpdate(prevProps){
    //     if(prevProps.product !== this.props.product){
    //         this.props.fetchProduct(this.props.match.params.id);
    //     }
    // }


    render(){
        // debugger;
        // if (!this.props.product){
        //     // debugger;
        //     this.props.fetchProduct(this.props.match.params.id);
        //     // debugger;
        // }
        // debugger;
        if (this.props.product){
            const {product} = this.props;
            var imageurl;
            if (product.id % 3 === 0){
                imageurl = window.longproductURL;
            }else if (product.id % 3 === 1){
                imageurl = window.squareproductURL;
            }else{
                imageurl = window.flatproductURL;
            }
            var weekdays = ['Sun','Mon','Tues','Wed','Thurs','Fri','Sat'];
            var dayslater = product.delivery_days;         //add shipping time column to products table?
            var date = new Date();
            var nextdate = new Date(date.getFullYear(), date.getMonth(), date.getDate() + product.delivery_days);
            // debugger;
            var nextdate_word = nextdate.toLocaleString('en-us',{day: 'numeric', month: 'short'})
            var deliverday = `${dayslater === 1 ? 'Tomorrow' : weekdays[nextdate.getDay()]}, ${nextdate_word}`;
            // debugger;
            return (
                <div>
                    <HeaderContainer />
                    <div className="product-show">
                        <div className="product-info">
                            <div className="product-department-container">
                                <Link className="product-show-department" to='/products'>
                                    <span>Products</span>
                                </Link>
                                <span>  >  </span>
                                <Link className="product-show-department" to={`/${product.department}`}>
                                    <p>{product.department.split('-').map(word => word[0].toUpperCase() + word.slice(1)).join(' ')}</p>
                                </Link>
                            </div>
                            <div className="product-view-info">
                                <div className="product-show-img-container">
                                    <img className="product-show-img" src={imageurl} />
                                </div>

                                <div className="product-base-info">
                                    <div className="product-name-container">
                                        <p className="product-show-name">{product.name}</p>
                                        <p>overall review info here</p>
                                    </div>
                                    <div className="product-show-price-shipping">
                                        <div className="product-show-item-price-container">
                                            <span className="index-dollar-sign">$</span>
                                            <span className="index-price-dollars">{Math.floor(product.price)}</span>
                                            <span className="index-price-cents">{(product.price % 1) === 0 ? '00' : (product.price % 1).toFixed(2).slice(2)}</span>
                                        </div>
                                        <span>Get </span>
                                        <span className="product-show-bold-text">Fast, Free Shipping</span>
                                        <span> with </span>
                                        <span className="product-show-prime-link">Amazon Prime</span>
                                        <br />
                                        <span>& </span>
                                        <span className="product-show-return">FREE Returns</span>
                                    </div>
                                    <div className="product-show-description-container">
                                        <p className="product-show-description-title">About this Item</p>
                                        <div className="product-show-description">
                                            {product.description.split('*').map((line,idx) => <span key={`${product.id}-des-line-${idx}`}>{line}<br/></span>)}
                                        </div>
                                        <div className="product-show-review-info">
                                            <p>review info?</p>
                                        </div>
                                    </div>
                                </div>
                                <div className="product-show-buy-shipping">
                                    <div className="product-show-item-price-container">
                                        <span className="index-dollar-sign">$</span>
                                        <span className="index-price-dollars">{Math.floor(product.price)}</span>
                                        <span className="index-price-cents">{(product.price % 1) === 0 ? '00' : (product.price % 1).toFixed(2) * 100}</span>
                                    </div>
                                    <span>Get </span>
                                        <span className="product-show-bold-text">Fast, Free Shipping</span>
                                        <span> with </span>
                                        <span className="product-show-prime-link">Amazon Prime</span>
                                        <br />
                                        <span>& </span>
                                    <span className="product-show-return">FREE Returns</span>
                                    <div className="product-show-item-shipping-container">
                                        <span>Get it as soon as </span>
                                        <span className="delivery-date">{deliverday}</span>
                                        <br />
                                        <span>FREE Shipping by Amajon</span>
                                    </div>
                                    <button className="add-cart">Add to Cart</button>
                                    <button className="buy-now">Buy Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            )
        }else{
            return null;
        }
    }
}

export default ProductShow;