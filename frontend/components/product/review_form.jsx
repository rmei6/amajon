import React from "react";
import { Link, useHistory } from "react-router-dom";
import HeaderContainer from "../header/header_container";

class ReviewForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      department: '',
      stars: 1,
      headline: '',
      body: ''
    }
    this.setDepartment = this.setDepartment.bind(this)
    this.setStars = this.setStars.bind(this)
    this.setText = this.setText.bind(this)
    this.setHeadline = this.setHeadline.bind(this)
    this.submitReview = this.submitReview.bind(this)
  }

  componentDidMount(){
    this.props.fetchProduct(this.props.match.params.id);
  }

  setDepartment(dep){
    // debugger;
    this.setState({department: dep})
  }

  setStars(){    
    return(e)=> {
        e.preventDefault()
        this.setState({stars: parseInt(e.currentTarget.value)})
    }
  }

  setText(){    
      return(e)=> {
          e.preventDefault()
          this.setState({body: e.currentTarget.value})
      }
  }

  setHeadline(){    
      return(e)=> {
          e.preventDefault()
          this.setState({headline: e.currentTarget.value})
      }
  }

  submitReview(e){
      e.preventDefault()
      if(this.state.body != '' && this.state.headline != ''){
          let review = {
              'user_name': this.props.currentUser.name,
              'user_id': this.props.currentUser.id,
              'product_id': this.props.product.id,
              'headline': this.state.headline,
              'body': this.state.body,
              'stars': this.state.stars
          }
          let that = this;
          this.props.createReview(review)
          .then(() => {
              that.props.updateProduct(that.props.product.id)
          })
          this.props.history.push(`/products/${this.props.product.id}`);
      }
  }

  render(){
    if(this.props.product){
      const {product, currentUser} = this.props;
      if(currentUser === undefined){
        return (
          <div>
            <span>Please login to leave a review</span>
          </div>
        )
      }
      if(currentUser.reviewed_products.includes(product.id)){
        return (
          <div>
            <span>You already have a review for this product</span>
          </div>
        )
      }
      return (
        <div>
          <HeaderContainer setDepartment={this.setDepartment}/>
          <div className="review-form-container">
            <div className="review-form-topbar">
              <div className="review-form-username">
                <img className="review-form-avatar" src={window.avatarUrl}/>
                <span>{currentUser.name}</span>
              </div>
            </div>
            <div className="review-form">
              <div className="review-form-header">
                <h2 className="primary-title">Create Review</h2>
                <div className="review-form-product">
                  <img className="review-form-img" src={`${this.props.product.photoUrl}`}/>
                  {/*max height is 62px, width is auto, set height of review-form-container to 100 vh */}
                  <div >
                    {this.props.product.name}
                  </div>
                </div>
              </div>
              <div className="review-stars">
                <h3 className="secondary-title">Overall rating</h3>
                <div className="review-stars-selection">
                  <select onChange={this.setStars()}>
                    <option value={1}>1</option>
                    <option value={2}>2</option>
                    <option value={3}>3</option>
                    <option value={4}>4</option>
                    <option value={5}>5</option>
                  </select>
                  <span>{this.state.stars === 1 ? ' star' : ' stars'}</span>
                </div>
              </div>
              <div className="review-headline-container">
                <h3 className="secondary-title">Add a headline</h3>
                <input className="review-headline-input" type="text" onChange={this.setHeadline()} placeholder="What's most important to know?"></input>
              </div>
              <div className="review-body-container">
                <h3 className="secondary-title">Add a written review</h3>
                <textarea className="review-body-input" onChange={this.setText()} placeholder="What did you like or dislike? What did you use this product for?"/>
              </div>
              <button onClick={this.submitReview} className="review-submit">Submit</button>
            </div>
          </div>
        </div>
      )

    }else{
      return null;
    }
  }
}

export default ReviewForm;