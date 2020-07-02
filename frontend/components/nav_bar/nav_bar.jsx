import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = ({ currentUser, logout, openModal, demoLogin }) => {

    const sessionLinks = () => (
        <nav className = "login-signup">
            <a className="login-button" onClick={() => openModal('login')}>Log In</a>
            <a className="signup-button" onClick={() => openModal('signup')}>Sign Up</a>
        </nav>
    );

    const personalNavBar = () => (
        <hgroup className="header-group">
            <h2 className="header-name">Hi, {currentUser.username}!</h2>
            <button className="header-button" onClick={logout}>Log out</button>
        </hgroup>
    );

    return currentUser ? personalNavBar() : sessionLinks();
};

export default NavBar;