class SecretsController < ApplicationController
  before_action :current_user

  def show
    redirect_to secrets_show_path
  end
end
