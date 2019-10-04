# frozen_string_literal: true

require 'test_helper'

class SignupUserTest < ActionDispatch::IntegrationTest
  test 'get signup user form and create user' do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { username: 'joe', email: 'joe@email.com', password: 'password', admin: false } }
      follow_redirect!
    end
    assert_template 'users/show'
    assert_match 'joe', response.body
  end
end
