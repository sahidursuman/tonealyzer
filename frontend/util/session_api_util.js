export const login = identity => (
  $.ajax({
    method: 'POST',
    url: '/api/session',
    data: { identity }
  })
);

  // TODO changed this url, take note, added callback
export const signup = identity => (
  $.ajax({
    method: 'POST',
    url: '/api/identities',
    xhrFields: { withCredentials: true },
    data: { identity }
  })
);

export const logout = () => (
  $.ajax({
    method: 'DELETE',
    url: '/api/session'
  })
);

export const loginDemoUser = () => (
  $.ajax({
    method: 'POST',
    url: '/api/session',
    data: {identity: {email: "email@gmail.com", password: "secretpass123"}}
  })
);

//not using any of these?? directly changing routes right in session form jsx file
// export const loginFacebook = () => (
//   $.ajax({
//     method: 'GET',
//     url: '/api/facebook'
//   })
// );
//
// export const loginGoogle = () => (
//   $.ajax({
//     method: 'GET',
//     url: "/api/auth/google_oauth2"
//   })
// );
