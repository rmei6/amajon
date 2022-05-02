import React from "react";

class Background extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            images:[window.background1URL,window.background2URL,window.background3URL,window.background4URL,window.background5URL,window.background6URL,window.background7URL,window.background8URL],
            interval: ''}
        this.getLeftImage = this.getLeftImage.bind(this)
        this.getRightImage = this.getRightImage.bind(this)
    }

    getLeftImage(){
        var newimages = this.state.images
        newimages.push(newimages.shift())
        this.setState({images : newimages})
    }

    getRightImage(){
        var newimages = this.state.images
        newimages.unshift(newimages.pop())
        this.setState({images : newimages})
    }

    componentDidMount(){
        this.setState(
            {interval : setInterval(() => {
                    this.getLeftImage()
                }, 10000)
            }
        )
    }

    componentWillUnmount(){
        clearInterval(this.state.interval)
        this.setState({interval: ''})
    }

    render(){
        return (
            <div className="background">
                <img className="background-image" src={this.state.images[0]} alt="" />
                <div className="background-arrows">
                    {/* <span className="background-arrow" onClick={this.getLeftImage}>&#8592;</span> */}
                    <div className="arrow-container" onClick={this.getLeftImage}>
                        <p className="background-arrow"> &#60; </p>
                    </div>
                    {/* <p className="background-arrow" onClick={this.getRightImage}>&#8594;</p> */}
                    <div className="arrow-container" onClick={this.getRightImage}>
                        <p className="background-arrow"> &#62; </p>
                    </div>
                </div>
            </div>
        )
    }
}

export default Background;