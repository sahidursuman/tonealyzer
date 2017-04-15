import * as APIUtil from '../util/session_api_util';
import { hashHistory } from 'react-router';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const receiveCurrentUser = currentUser => {
  return({
  type: RECEIVE_CURRENT_USER,
  currentUser
})};

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const requestDemoUser = () => dispatch => (
  APIUtil.loginDemoUser()
  .then((currentUser) => {
    window.currentUser = currentUser;
    return dispatch(receiveCurrentUser(currentUser));
  }).then(() => hashHistory.push('/home'))
  // TODO why push to '/redirect?'
);

export const requestLogin = user => dispatch => (
  APIUtil.login(user)
  .then(currentUser => {
        window.currentUser = currentUser;
        return dispatch(receiveCurrentUser(currentUser))},
        error => dispatch(receiveErrors(error.responseJSON)))
  .then(() => hashHistory.push('/home'))
);

export const requestSignup = user => dispatch => {
  return(
  APIUtil.signup(user)
  .then(currentUser => {
    window.currentUser = currentUser;
    return dispatch(receiveCurrentUser(currentUser))},
        error => dispatch(receiveErrors(error.responseJSON)),)
  .then(() => hashHistory.push('/home'))
)};

export const requestLogout = () => dispatch => (
  APIUtil.logout()
  .then(user => dispatch(receiveCurrentUser(null)))
  .then(() => {
    window.currentUser = null;
    hashHistory.push('/logout');
  })
);
