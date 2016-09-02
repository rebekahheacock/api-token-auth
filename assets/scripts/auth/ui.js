'use strict';

const app = require('../app');

const success = (data) => {
  console.log(data);
};

const failure = (error) => {
  console.error(error);
};

const signInSuccess = (data) => {
  console.log('you signed in');
  app.user = data.user;
};

const changePasswordSuccess = () => {
  console.log('password changed!');
};

const signOutSuccess = () => {
  app.user = null;
  console.log('you have signed out!');
};

module.exports = {
  failure,
  success,
  signInSuccess,
  changePasswordSuccess,
  signOutSuccess,
};
