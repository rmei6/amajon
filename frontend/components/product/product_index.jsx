import React from "react";

class ProductIndex extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        debugger;
        return (
            <div>
                {this.props.products.map(product => (
                    <li>{product.name}</li>
                ))}
            </div>
        )
    }
}

export default ProductIndex;