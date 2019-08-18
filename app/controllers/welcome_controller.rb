# frozen_string_literal: true

class WelcomeController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
  end

  def about; end
end
