import React from "react";
import { Link } from "react-router-dom";
import { fetchProducts } from "../../actions/products_actions";

const departments = ['Beauty','Food and Groceries','Kitchen','Clothing Shoes and Jewelry','Garden','Toys and Games','Traditional','Health','Art']

class Nav extends React.Component{
    constructor(props){
        super(props)
        // this.state = {department: ''}
        // this.switchDep = this.switchDep.bind(this)
    }

    // switchDep(dep){
    //     return e => {
    //         // debugger
    //         // e.preventDefault()
    //         e.stopPropagation()
    //         dispatch(fetchProducts(dep))
    //     }
    // }

    render(){
        return(
            <div className="nav">
                <ul className="nav-list">
                    <div className="nav-link-container">
                        <Link className="nav-link" to='/products' onClick={() => this.props.setDepartment(`products`)}>All</Link>
                    </div>
                    {departments.map((department,idx) => (
                        <div className="nav-link-container" key={`link-container-${idx}`}>
                            {/* <Link className="nav-link" to={`/${department.toLowerCase().split(" ").join('-')}`} onClick={this.switchDep(`${department.toLowerCase().split(" ").join('-')}`)}>{department}</Link> */}
                            <Link className="nav-link" to={`/${department.toLowerCase().split(" ").join('-')}`} onClick={() => this.props.setDepartment(`${department.toLowerCase().split(" ").join('-')}`)}>{department}</Link>
                            {/* <Link className="nav-link" to={`/${department.toLowerCase().split(" ").join('-')}`}>{department}</Link> */}
                        </div>
                    ))}
                </ul>
            </div>
        )
    }
}

export default Nav;