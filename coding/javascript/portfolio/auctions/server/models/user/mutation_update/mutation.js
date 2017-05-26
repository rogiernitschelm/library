import {
  GraphQLString
} from 'graphql';
import updateUser from './method';
import UserType from '../usertype';

export default {
  updateUser: {
    type: UserType,
    args: {
      email: { type: GraphQLString },
      firstname: { type: GraphQLString },
      lastname: { type: GraphQLString }

    },
    resolve(parentValue, args, req) {
      return updateUser({ args, req });
    }
  }
};
