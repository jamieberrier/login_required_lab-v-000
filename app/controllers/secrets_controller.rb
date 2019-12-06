class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to secrets_show_path
  end

  private

  def require_login
  end
end
