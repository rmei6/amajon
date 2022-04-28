import React from "react";
import { Link } from "react-router-dom";

const departments = ['Beauty','Food and Groceries','Kitchen','Clothing, Shoes and Jewelry','Garden','Toys and Games','Traditional','Health','Art']

const Nav = () => {
    return (
        <div className="nav">
            <ul className="nav-list">
                <div className="nav-link-container">
                    <Link className="nav-link" to='/products'>All</Link>
                </div>
                {departments.map((department,idx) => (
                    <div className="nav-link-container" key={`link-container-${idx}`}>
                        <Link className="nav-link" to={`/${department.toLowerCase().split(" ").join('-')}`}>{department}</Link>
                    </div>
                ))}
            </ul>
        </div>
    )
}

export default Nav;