class UsersController < ApplicationController
  def index
    q = params[:search_word]
    if q.present?
      @users = User.where(name: q)
    else
      @users = User.all 
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
end
