import { RECEIVE_CURRENT_USER, RECEIVE_LOGOUT_SUCCESS } from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullUser = {currentUser: null, errors: []};

const sessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);

  switch(action.type){
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, state, { currentUser });
    case RECEIVE_LOGOUT_SUCCESS:
      return merge({}, state);
    default:
      return state;
  }
};

export default sessionReducer;
