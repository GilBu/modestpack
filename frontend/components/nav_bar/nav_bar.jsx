import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = ({ currentUser, logout, openModal }) => {
    const sessionLinks = () => (
        <nav className = "login-signup">
            <button onClick={() => openModal('login')}>Login</button>
            {/* <Link to="/login">Login</Link> */}
            &nbsp;or&nbsp;
            <button onClick={() => openModal('signup')}>Signup</button>
            {/* <Link to="/signup">Sign up!</Link> */}
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