class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  private

  def require_login
    redirect_to root_path unless !current_user.nil?
  end
end
