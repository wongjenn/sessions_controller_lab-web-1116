class SessionsController < ApplicationController
  def new
    binding.pry
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to sessions_new_path
    else
      @name = session[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end
end
