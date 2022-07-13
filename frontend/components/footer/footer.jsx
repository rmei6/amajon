import React from "react";

const Footer = () => {

    return location.hash === '#/login' || location.hash === '#/signup' ? '' : (
        <div className="footer-container">
            <div className="footer">
                <div className="github-container">
                    <a href="https://github.com/rmei6">
                        {/* <img className="logo" src={window.githubUrl} alt="" /> */}
                        <i className="fa fa-github"></i>
                    </a>
                </div>
                <div className="linkedin-container">
                    <a href="https://www.linkedin.com/in/runqiangmei/">
                        {/* <img className="logo" src={window.linkedinUrl} alt="" /> */}
                        {/* <i class="fa fa-linkedin-square" style="font-size:48px;color:red"></i> */}
                        <i className="fa fa-linkedin-square"></i>
                    </a>
                </div>
            </div>            
        </div>
    )
}

export default Footer;