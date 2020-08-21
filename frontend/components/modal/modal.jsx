import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';
import SelectionContainer from '../session_form/selection_container';
import CartItemContainer from '../cart_items/cart_items_container';

function Modal({ modal, closeModal }) {
    if (!modal) {
        return null;
    }
    let component;
    switch (modal) {
        case 'login':
            component = <LoginFormContainer />;
            break;
        case 'signup':
            component = <SignupFormContainer />;
            break;
        case 'selection':
            component = <SelectionContainer />;
            break;
        case 'cart':
            component = <CartItemContainer />;
            break;
        default:
            return null;
    }
    switch (modal) {
        case 'login':
        case 'signup':
        case 'selection':
            return (
                <div className="modal-background" onClick={closeModal}>
                    <div className="modal-image">
                        <div className="modal-child" onClick={e => e.stopPropagation()}>
                            {component}
                        </div>
                    </div>
                </div>
            );
        case 'cart':
            return (
                <div className="modal-background" onClick={closeModal}>
                    <div>
                        <div className="cart-model-container" onClick={e => e.stopPropagation()}>
                            {component}
                        </div>
                    </div>
                </div>
            );
        default:
            return null;
    }
    
}

const mSTP = state => {
    return {
        modal: state.ui.modal
    };
};

const mDTP = dispatch => {
    return {
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mSTP, mDTP)(Modal);