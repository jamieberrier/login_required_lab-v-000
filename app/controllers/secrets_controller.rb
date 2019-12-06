class SecretsController < ApplicationController
  def show
    if current_user
      redirect_to secrets_show_path
    else
      redirect_to sessions_new_path
    end
  end
end
