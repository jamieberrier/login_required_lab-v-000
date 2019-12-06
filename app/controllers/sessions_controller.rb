class SessionsController < ApplicationController
  def new
  end
  # If a user fails to enter their name on the login page, they should be redirected there until they successfully do so.
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
      redirect_to root_path
    end
  end
end
