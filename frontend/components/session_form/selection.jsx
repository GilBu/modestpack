import React from 'react';
import NavBarContainer from '../nav_bar/nav_bar_container';

class Selection extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="selection-container">
                <div onClick={this.props.closeModal} className="close-x">✖</div>
                    <div className="selection-box">
                        <div className="selection-modal">
                            <p className="site-name">Modest Pack</p>
                            <NavBarContainer />
                        </div>
                    </div>
            </div>
        );
    }
}

export default Selection;