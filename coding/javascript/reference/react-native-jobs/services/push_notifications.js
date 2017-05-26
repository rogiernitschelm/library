import { Permissions, Notifications } from 'expo';
import axios from 'axios';
import { AsyncStorage } from 'react-native';

const PUSH_ENDPOINT = 'http://rallycoding.herokuapp.com/api/tokens';

export default async () => {
  let previousToken = await AsyncStorage.getItem('pushtoken');

  if (previousToken) {
    return;
  }

  let { status } = await Permissions.askAsync(Permissions.REMOTE_NOTIFICATIONS);

  if (status !== 'granted') {
    return;
  }

  let token = await Notifications.getExponentPushTokenAsync();
  await axios.post(PUSH_ENDPOINT, { token: { token } });
  AsyncStorage.setItem('pushtoken', token);
}
