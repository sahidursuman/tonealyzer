import React from "react";

import ToneTrends from "./tone_trends";
import Personality from "./personality";
import Documents from "./documents";

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      tabClasses: [
        "dashboard-tab selected-tab",
        "dashboard-tab unselected-tab",
        "dashboard-tab unselected-tab"
      ],
      selectedIndex: 0
    };

    this.clickTab = this.clickTab.bind(this);
  }
  componentWillReceiveProps(newProps) {
    this.forceUpdate();
  }

  componentWillMount() {
    this.props.fetchBlurbs();
  }

  clickTab(e) {
    let index = $(e.currentTarget).index();
    if (index === this.state.selectedIndex) {
      return;
    }

    let tabClasses = this.state.tabClasses;
    for (let i = 0; i < tabClasses.length; i++) {
      if (i === index) {
        tabClasses[i] = "dashboard-tab selected-tab";
      } else {
        tabClasses[i] = "dashboard-tab unselected-tab";
      }
    }

    this.setState({
      selectedIndex: index,
      tabClasses: tabClasses
    });
  }

  render() {
    //moved this here because if it's set in the constructor I can't send down the blurbs to documents
    this.components = [
      <ToneTrends blurbs={this.props.blurbs} fetchBlurbs={this.props.fetchBlurbs}/>,
      <Personality personality={this.props.personality} fetchPersonality={this.props.fetchPersonality} updatePersonality={this.props.updatePersonality}/>,
      <Documents blurbs={this.props.blurbs} fetchBlurbs={this.props.fetchBlurbs}/>
    ];

    return <div className="dashboard">
        <div className="dashboard-tabs">
          <div className={this.state.tabClasses[0]} onClick={this.clickTab}>Tone Trends</div>
          <div className={this.state.tabClasses[1]} onClick={this.clickTab}>Personality</div>
          <div className={this.state.tabClasses[2]} onClick={this.clickTab}>Documents</div>
        </div>
        {this.components[this.state.selectedIndex]}
      </div>;
  }
}

export default Dashboard;
