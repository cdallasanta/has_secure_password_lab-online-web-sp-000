class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:user_id]
      redirect_to '/'
    elsif params[:name].blank?
      redirect_to '/'
    else
      # check password here?
      session[:user_id] = User.find_by(name: params[:name]).id
      redirect_to '/'
    end
  end

  def destroy
    session.delete [:name] if sessions[:name]
    redirect_to '/'
  end
end
