import UserType from '../usertype';
import deleteUser from './method';

export default {
  deleteUser: {
    type: UserType,
    resolve(parentValue, args, req) {
      return deleteUser({ req, args });
    }
  },
};
