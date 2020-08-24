import React from 'react';
import { Link } from 'react-router-dom';
import Search from '../search/search';
import DropDownContainer from "../drop_down/drop_down_container";

const NavBar = ({ currentUser, logout, openModal, userCartItems }) => {

    const sessionLinks = () => (
        <nav className = "login-signup">
            <a className="login-button" onClick={() => openModal('login')}>Log In</a>
            <a className="signup-button" onClick={() => openModal('signup')}>Sign Up</a>
        </nav>
    );

    const personalNavBar = () => {
        return (
        <hgroup className="header-group">
            <a className="cart-button" onClick={() => openModal('cart')}>
                <svg xmlns="http://www.w3.org/2000/svg" fill="#d8d8da" width="24" height="24" viewBox="0 0 24 24"><path d="M10 19.5c0 .829-.672 1.5-1.5 1.5s-1.5-.671-1.5-1.5c0-.828.672-1.5 1.5-1.5s1.5.672 1.5 1.5zm3.5-1.5c-.828 0-1.5.671-1.5 1.5s.672 1.5 1.5 1.5 1.5-.671 1.5-1.5c0-.828-.672-1.5-1.5-1.5zm6.304-15l-3.431 12h-2.102l2.542-9h-16.813l4.615 11h13.239l3.474-12h1.929l.743-2h-4.196z" /></svg>
                <p> {userCartItems}</p>
            </a>
            {/* <h2 className="header-name">Hi, {currentUser.username}!</h2> */}
            <DropDownContainer/>
            {/* <button className="header-button" onClick={logout}>Log out</button> */}
        </hgroup>
    )}

    return currentUser ? personalNavBar() : sessionLinks();
};

export default NavBar;