import React from "react";
import { Link } from "react-router-dom";
import HeaderContainer from "../header/header_container";
import Background from "./background";
import DepartmentLinks from "./department_links";

class Main extends React.Component{
    constructor(props){
        super(props)
        this.state = {department:''}
        this.setDepartment = this.setDepartment.bind(this)
    }

    setDepartment(dep){
        // debugger;
        this.setState({department: dep})
    }

    render(){
        return (
            <div className="main">
                <HeaderContainer setDepartment={this.setDepartment}/>
                <Background />
                <DepartmentLinks />
            </div>
        )
    }
}

export default Main;