import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_LOGOUT_SUCCESS = "RECEIVE_LOGOUT_SUCCESS";

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveLogoutSuccess = () => ({
  type: RECEIVE_LOGOUT_SUCCESS
});

export const requestLogin = user => dispatch => (
  APIUtil.login(user).then(
    currentUser => dispatch(receiveCurrentUser(currentUser))
  )
);

export const requestLogout = () => dispatch => (
  APIUtil.logout().then(
    user => dispatch(receiveCurrentUser(null))
  )
);

export const requestDemoUser = () => dispatch => (
  APIUtil.loginDemoUser().then(
    currentUser => dispatch(receiveCurrentUser(currentUser))
  )
);
