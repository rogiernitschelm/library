import _ from 'lodash';
import React, { Component } from 'react';
import { View, Text, AsyncStorage } from 'react-native';
import { AppLoading } from 'expo';
import Slides from '../components/slides';

const SLIDE_DATA = [
  { text: 'Welcome to jobs', color: '#03A9F4' },
  { text: 'Set your location', color: '#009688' },
  { text: 'Grab a job', color: '#03A9F4' },
];

class WelcomeScreen extends Component {
  state = { token: null };
  onSlidesComplete = ::this.onSlidesComplete;

  async componentWillMount() {
    let token = await AsyncStorage.getItem('fb_token');

    if (token) {
      this.props.navigation.navigate('map');
      this.setState({ token });
    } else {
      this.setState({ token: false });
    }
  }

  onSlidesComplete() {
    this.props.navigation.navigate('auth');
  }

  render() {
    if (_.isNull(this.state.token)) {
      return <AppLoading />;
    }
    return (
      <Slides data={SLIDE_DATA} onComplete={this.onSlidesComplete} />
    )
  }
}

export default WelcomeScreen;
