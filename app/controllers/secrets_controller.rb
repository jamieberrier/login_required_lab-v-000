class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  private

  def require_login
    flash[:message] = "Shhhhhh"
    redirect_to root_path unless session.include? :name
  end
end
