import Expo, { Notifications } from 'expo';
import React from 'react';
import { StyleSheet, Text, View, Alert } from 'react-native';
import { TabNavigator, StackNavigator } from 'react-navigation';
import { Provider } from 'react-redux';

import registerForNotifications from './services/push_notifications';
import store from './store';
import AuthScreen from './screens/auth_screen';
import WelcomeScreen from './screens/welcome_screen';
import MapScreen from './screens/map_screen';
import DeckScreen from './screens/deck_screen';
import SettingsScreen from './screens/settings_screen';
import ReviewScreen from './screens/review_screen';

const MainNavigator = TabNavigator({
  welcome: { screen: WelcomeScreen },
  auth: { screen: AuthScreen },
  main: {
    screen: TabNavigator({
      map: { screen: MapScreen },
      deck: { screen: DeckScreen },
      review: {
        screen: StackNavigator({
          review: { screen: ReviewScreen },
          settings: { screen: SettingsScreen }
        })
      }
    }, {
      tabBarPosition: 'bottom',
      tabBarOptions: {
        labelStyle: { fontSize: 12 }
      }
    })
  }
}, {
  lazy: true,
  navigationOptions: {
    tabBarVisible: false
  }
});

class App extends React.Component {
  componentDidMount() {
    registerForNotifications();
    Notifications.addListener(notification => {
      const { data: { text } } = notification;

      if (origin === 'received' && text) {
        Alert.alert(
          'New push notification',
          text,
          [{ text: 'ok' }]
        );
      } 
    });
  }

  render() {
    return (
      <Provider store={store}>
        <MainNavigator />
      </Provider>
    );
  }
}

Expo.registerRootComponent(App);
