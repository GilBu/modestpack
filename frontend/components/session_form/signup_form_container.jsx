import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'sign up',
        // navLink: <Link to="/login">log in instead</Link>,
    };
};

const mDTP = dispatch => {
    return {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <button className="selection" onClick={() => dispatch(openModal('selection'))}>
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    ariaHidden="true"
                    style={{ MsTransform: "rotate(360deg)" }}
                    transform="rotate(360)"
                    viewBox="0 0 20 20"
                >
                    <path fill="#FFFFFF" d="M14 5l-5 5 5 5-1 2-7-7 7-7z"></path>
                </svg>
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mSTP, mDTP)(SessionForm);