import { connect } from 'react-redux';

import { logout, demoLogin } from '../../actions/session_actions';
import DropDown from './drop_down';



const mSTP = ({ session, entities: { users } }) => {
    return {
        currentUser: users[session.id]
    };
};

const mDTP = dispatch => ({
    logout: () => dispatch(logout())
});

export default connect(mSTP, mDTP)(DropDown);