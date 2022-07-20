import React from "react";
import { Link } from "react-router-dom/cjs/react-router-dom.min";
import { BsStarFill, BsStarHalf, BsStar } from "react-icons/bs"


const ProductIndexItem = ({product}) => {
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
    var nextdate = new Date(date.getFullYear(), date.getMonth(), date.getDate()+dayslater);
    var nextdate_word = nextdate.toLocaleString('en-us',{day: 'numeric', month: 'short'})
    var deliverday = `${dayslater === 1 ? 'Tomorrow' : weekdays[nextdate.getDay()]}, ${nextdate_word}`;
    const stars = [];
    let stars_rem = product.review;
    for(let i = 0; i < 5; i++){
        if(stars_rem >= 1){
            stars.push(<BsStarFill key={i} className="review-star"/>);
            stars_rem -= 1;
        }else if(stars_rem === 0){
            stars.push(<BsStar key={i} className="review-star"/>)
        }else{
            if(stars_rem < 0.3){
                stars.push(<BsStar key={i} className="review-star"/>)
            }else if(stars_rem <= 0.7){
                stars.push(<BsStarHalf key={i} className="review-star"/>)
            }else{
                stars.push(<BsStarFill key={i} className="review-star"/>)
            }
            stars_rem = 0;
        }
    }
    return (
        <div className="product-index-item">
            <div className="index-img-container">
                <Link to={`/products/${product.id}`}>
                    {/* <img className="product-index-item-img" src={imageurl} /> */}
                    <img className="product-index-item-img" src={product.photoUrl} />
                </Link>
            </div>
            <div className="product-index-item-name-container">
                <Link className="product-index-item-name" to={`/products/${product.id}`}>
                    <span>{product.name.length > 100 ? `${product.name.slice(0,100)}...` : product.name}</span>
                </Link>
            </div>
            <div className="product-index-item-reviews-container">
                {stars}
                <span className="product-index-item-reviews-num">{product.review_num}</span>
            </div>
            <div className="product-index-item-price-container">
                <Link className="product-index-item-price" to={`/products/${product.id}`}>
                    <span className="index-dollar-sign">$</span>
                    <span className="index-price-dollars">{Math.floor(product.price)}</span>
                    <span className="index-price-cents">{(product.price % 1) === 0 ? '00' : (product.price % 1).toFixed(2).slice(2)}</span>
                </Link>
            </div>
            <div className="product-index-item-shipping-container">
                <span>Get it as soon as </span>
                <span className="delivery-date">{deliverday}</span>
                <br />
                <span>FREE Shipping by Amajon</span>
            </div>
        </div>
    )
}

export default ProductIndexItem;

