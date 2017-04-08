import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from "./app";
import Splash from "./splash";
import DashboardContainer from "./dashboard/dashboard_container";
import BlurbInputContainer from "./blurb_input/blurb_input_container";
import ResultsContainer from "./results/results_container";

class Root extends React.Component {
  constructor(props) {
    super(props);
    this.redirectIfLoggedIn = this.redirectIfLoggedIn.bind(this);
  }

  redirectIfLoggedIn(nextState, replace) {
    if (window.currentUser) {
      location.reload();
      hashHistory.push("/home");
    }
  }

  ensureLoggedIn(nextState, replace) {
    if (!window.currentUser) {
      hashHistory.push("/");
    }
  }

  render() {
    let store = this.props.store;
    return <Provider store={ store }>
      <Router history={hashHistory}>
        <Route path="/" component={ App } >
          <IndexRoute component={ Splash } />
          <Route path="/home" component={ DashboardContainer } />
          <Route path="/newBlurb" component={ BlurbInputContainer } />
          <Route path="/results/:blurbId" component={ ResultsContainer } />
          <Route path="/redirect" component={Splash} onEnter={this.redirectIfLoggedIn} />
        </Route>
      </Router>
    </Provider>;
  }
}

export default Root;
