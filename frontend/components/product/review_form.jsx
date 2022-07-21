import React from "react";
import { BsTrashFill } from "react-icons/bs";
import { Link, useHistory } from "react-router-dom";
import HeaderContainer from "../header/header_container";

class ReviewForm extends React.Component {
  constructor(props){
    super(props);
    debugger;
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
    debugger;
    if(this.props.formType === 'create'){
      this.props.fetchProduct(this.props.match.params.id);
    }else if(this.props.currentUser && this.props.currentUser.review_ids.includes(parseInt(this.props.match.params.id))){
      let that = this;
      this.props.getReview(this.props.match.params.id)
        .then(() => that.setState({stars: that.props.review.stars,
                                  headline: that.props.review.headline,
                                  body: that.props.review.body}));
    }
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
          let review = this.props.formType === 'create' ?
          {   'user_name': this.props.currentUser.name,
              'user_id': this.props.currentUser.id,
              'product_id': this.props.product.id, //change to this.props.review.product_id later
              'headline': this.state.headline,
              'body': this.state.body,
              'stars': this.state.stars
          } :
          {   'id': this.props.review.id,
              'user_name': this.props.currentUser.name,
              'user_id': this.props.currentUser.id,
              'product_id': this.props.product.id, //change to this.props.review.product_id later
              'headline': this.state.headline,
              'body': this.state.body,
              'stars': this.state.stars
          }
          let that = this;
          debugger;
          if(this.props.formType === 'create'){
            this.props.createReview(review)
            .then(() => {
              that.props.updateProduct(that.props.product.id)
            })
          }else{
            this.props.updateReview(review)
            .then(() => {
              debugger;
              that.props.updateProduct(that.props.product.id)
            })
          }
          this.props.history.push(`/products/${this.props.product.id}`);
      }
  }

  render(){
    if(this.props.product){
      const {product, currentUser, formType} = this.props;
      debugger;
      if(currentUser === undefined){
        return (
          <div>
            <HeaderContainer setDepartment={this.setDepartment}/>
            <div className="no-access-message">
              <span>Please login to {formType === 'create' ? 'leave' : 'edit'} a review</span>
            </div>
          </div>
        )
      }
      if(formType === 'create' && currentUser.reviewed_products.includes(product.id)){
        return (
          <div>
            <HeaderContainer setDepartment={this.setDepartment}/>
            <div className="no-access-message">
              <span>You already have a review for this product</span>
            </div>
          </div>
        )
      }else if(formType === 'edit'){
        if(!currentUser.review_ids.includes(parseInt(this.props.match.params.id))){
          return (
            <div>
              <HeaderContainer setDepartment={this.setDepartment}/>
              <div className="no-access-message">
                <span>You cannot edit this review</span>
              </div>
            </div>
          )
        }
        // else if(this.props.review === undefined){
        //   return (
        //     <div>
        //       <HeaderContainer setDepartment={this.setDepartment}/>
        //       <div className="no-access-message">
        //         <span>No review found</span>
        //       </div>
        //     </div>
        //   )
        // }
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
                <h2 className="primary-title">{formType === 'create' ? 'Create' : 'Edit'} Review</h2>
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
                  <select onChange={this.setStars()} value={this.state.stars}>
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
                <input className="review-headline-input" type="text" value={this.state.headline} onChange={this.setHeadline()} placeholder="What's most important to know?"></input>
              </div>
              <div className="review-body-container">
                <h3 className="secondary-title">Add a written review</h3>
                <textarea className="review-body-input" value={this.state.body} onChange={this.setText()} placeholder="What did you like or dislike? What did you use this product for?"/>
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