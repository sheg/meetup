class LoginPage
  include PageObject

  page_url("https://the-internet.herokuapp.com/login")

  text_field(:username, id: "username")
  text_field(:password, id: "password")
  button(:submit, css: "button[type='submit']")
  div(:flash, id: "flash")

end