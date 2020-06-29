import { connect } from 'react-redux';
import React from 'react';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import Selection from './selection';

const mSTP = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'signup'
    };
};

const mDTP = dispatch => {
    return {
        loginForm: (
            <button onClick={() => dispatch(openModal('login'))}>
                Login
            </button>
        ),
        signupForm: (
            <button onClick={() => dispatch(openModal('signup'))}>
                Signup
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mSTP, mDTP)(Selection);