import React from 'react';

class Search extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      search: ""
    }
  }

  handleChangeText (e) {
    this.setState({
      search: e.target.value,
    })
  }

  // searchSpace(event) {
  //   let keyword = event.target.value;
  //   this.setState({ search: keyword })
  // }

  render() {

    return (
      <form>
        <input type="text" value={this.state.search} onChange={this.handleChangeText} />
        <input type="submit" onClick={(e) => this.props.searchSpace(e, this.state.search)} value="Add Task" />
      </form>
    )
  }
}

export default Search;