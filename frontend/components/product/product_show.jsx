import React from "react";
import { Link } from "react-router-dom";
import HeaderContainer from "../header/header_container";

class ProductShow extends React.Component {
    constructor(props){
        super(props);
        this.state = {department:'',quantity:1}
        this.setDepartment = this.setDepartment.bind(this)
        this.handleClick = this.handleClick.bind(this)
    }

    componentDidMount(){
        // debugger;
        this.props.fetchProduct(this.props.match.params.id);
    }

    setDepartment(dep){
        // debugger;
        this.setState({department: dep})
    }

    handleSelect(){    
        return(e)=> {
            e.preventDefault()
            this.setState({quantity: e.currentTarget.value})
        }
    }

    handleClick(e){
        e.preventDefault()
        if(!this.props.currentUser){    
           this.props.history.push('/login')
        }else{    
            const product_id = this.props.product.id
            const cartItems = this.props.cart
            debugger;
            if (cartItems.includes(product_id)) {
                this.props.updateCart({product_id: product_id, quantity: this.state.quantity})        
            } else {
                this.props.addToCart({product_id: product_id, quantity: this.state.quantity})   
            }

        }
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
            const {product, currentUser} = this.props;
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
                    <HeaderContainer setDepartment={this.setDepartment}/>
                    <div className="product-show">
                        <div className="product-info">
                            <div className="product-department-container">
                                <Link className="product-show-department" to='/products'>
                                    <span>Products</span>
                                </Link>
                                <span> &#62; </span>
                                <Link className="product-show-department" to={`/${product.department}`}>
                                    <p>{product.department.split('-').map(word => word[0].toUpperCase() + word.slice(1)).join(' ')}</p>
                                </Link>
                            </div>
                            <div className="product-view-info">
                                <div className="product-show-img-container">
                                    {/* <img className="product-show-img" src={imageurl} alt={product.name}/> */}
                                    <img className="product-show-img" src={product.photoUrl} alt={product.name}/>
                                </div>

                                <div className="product-base-info">
                                    <div className="product-name-container">
                                        <p className="product-show-name">{product.name}</p>
                                        {/* <p>overall review info here</p> */}
                                        <p className="product-show-review">{product.review} stars</p>
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
                                    <div className='product-quantity'> 
                                        <select onChange ={this.handleSelect()} name="quantity" className='product-show-quantity-selector'>   
                                            <option value={1}>Qty: 1</option>
                                            <option value={2}>Qty: 2</option>
                                            <option value={3}>Qty: 3</option>
                                            <option value={4}>Qty: 4</option>
                                            <option value={5}>Qty: 5</option>
                                            <option value={6}>Qty: 6</option>
                                            <option value={7}>Qty: 7</option>
                                            <option value={8}>Qty: 8</option>
                                            <option value={9}>Qty: 9</option>
                                            <option value={10}>Qty: 10</option>
                                            <option value={11}>Qty: 11</option>
                                            <option value={12}>Qty: 12</option>
                                            <option value={13}>Qty: 13</option>
                                            <option value={14}>Qty: 14</option>
                                            <option value={15}>Qty: 15</option>
                                            <option value={16}>Qty: 16</option>
                                            <option value={17}>Qty: 17</option>
                                            <option value={18}>Qty: 18</option>
                                            <option value={19}>Qty: 19</option>
                                            <option value={20}>Qty: 20</option>
                                            <option value={21}>Qty: 21</option>
                                            <option value={22}>Qty: 22</option>
                                            <option value={23}>Qty: 23</option>
                                            <option value={24}>Qty: 24</option>
                                            <option value={25}>Qty: 25</option>
                                            <option value={26}>Qty: 26</option>
                                            <option value={27}>Qty: 27</option>
                                            <option value={28}>Qty: 28</option>
                                            <option value={29}>Qty: 29</option>
                                            <option value={30}>Qty: 30</option>
                                        </select>                            
                                    </div>
                                    <div className='addtocart'>
                                        <button className="addtocart-button" onClick={this.handleClick}>Add to Cart</button>
                                    </div>
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