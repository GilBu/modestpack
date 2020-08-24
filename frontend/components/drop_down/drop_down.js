import React from "react";
import { Link } from "react-router-dom";

class DropDown extends React.Component {
  container = React.createRef();
  state = {
    open: false,
  };
  componentDidMount() {
    document.addEventListener("mousedown", this.handleClickOutside);
  }
  componentWillUnmount() {
    document.removeEventListener("mousedown", this.handleClickOutside);
  }
  handleClickOutside = event => {
    if (this.container.current && !this.container.current.contains(event.target)) {
      this.setState({
        open: false,
      });
    }
  };
  handleButtonClick = () => {
    this.setState(state => {
      return {
        open: !state.open,
      };
    });
  };
  render() {
    return (
      <div className="DropDown">
        <div className="dd-container" ref={this.container}>
          <button
            type="button"
            className="dd-button"
            onClick={this.handleButtonClick}
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="cart-button"
              width="27"
              height="27"
              viewBox="0 0 46 46"
            >
              <path
                id="Imported Path"
                fill="white"
                d="M 23.00,0.00
                C 10.30,0.00 0.00,10.30 0.00,23.00 0.00,35.70 10.30,46.00 23.00,46.00
                35.70,46.00 46.00,35.70 46.00,23.00 46.00,10.30 35.70,0.00 23.00,0.00 Z M 23.00,6.88
                C 27.20,6.88 30.61,10.28 30.61,14.49 30.61,18.69 27.20,22.09 23.00,22.09
                18.80,22.09 15.39,18.69 15.39,14.49 15.39,10.28 18.80,6.88 23.00,6.88 Z M 22.99,39.99
                C 18.80,39.99 14.96,38.46 12.00,35.93 11.28,35.32 10.87,34.42 10.87,33.47
                10.87,29.21 14.31,25.80 18.57,25.80 18.57,25.80 27.43,25.80 27.43,25.80
                31.69,25.80 35.12,29.21 35.12,33.47 35.12,34.42 34.71,35.32 33.99,35.93
                31.03,38.46 27.19,39.99 22.99,39.99 Z"
              />
            </svg>
          </button>
          {this.state.open && (
            <div className="dropdown">
              <ul>
                <li>
                  <Link to="/orders">Purchases</Link>
                </li>
                <li>
                  <a onClick={this.props.logout}>
                    Logout
                  </a>
                </li>
              </ul>
            </div>
          )}
        </div>
      </div>
    );
  }
}

export default DropDown;