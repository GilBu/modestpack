import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'log in',
        // navLink: <Link to='/signup'>Sign up</Link>
    };
};

const mDTP = dispatch => {
    return {
        processForm: (user) => dispatch(login(user)),
        otherForm: (
            <button className="selection" onClick={() => dispatch(openModal('selection'))}>
                
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mSTP, mDTP)(SessionForm);