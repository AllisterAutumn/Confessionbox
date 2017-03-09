var AllItems = React.createClass ({

getInitialState(){
  return{ sinners: []}
},



  componentDidMount () {
    $.getJSON('/api/v1/sinners.json', (response) => {this.setState({sinners: response}) });

  },
  render ( ) {
    var sinners = this.state.sinners.map((sinner,i) => {
      return (
        <div key={i}>
        <h3>{sinner.name}</h3>
        <p>{sinner.sin}</p>
        </div>)

    });
    return (
      <div>
      {sinners}
      </div>
      )
  }

