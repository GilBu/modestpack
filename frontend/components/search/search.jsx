import React from 'react';

class Search extends React.Component {

  constructor(props) {
    super(props);
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    this.props.searchSpace(e.target.value);
  }

  render() {

    return (
      <form className="search-container">
        <input className="search-bar" type="text" placeholder="Search" value={this.props.search} onChange={this.handleChange} />
      </form>
    )
  }
}

export default Search;