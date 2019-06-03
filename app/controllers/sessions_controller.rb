class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name].blank?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete [:name] if sessions[:name]
    redirect_to '/'
  end
end
