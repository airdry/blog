# frozen_string_literal: true

require 'test_helper'

class CreateArticlesTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: 'joe', email: 'joe@email.com', password: 'password', admin: false)
  end

  test 'get new article form and create article' do
    sign_in_as(@user, 'password')
    get new_article_path
    assert_template 'articles/new'
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: { title: 'Article Creation Test', description: 'Article Creation Test Description' } }
      follow_redirect!
    end
    assert_template 'articles/show'
    assert_match 'Creation', response.body
  end
end
