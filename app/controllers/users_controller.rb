class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], zip: params[:zip], state: params[:state])
    if user.save
      render json: {message: "Success"}
    else
      render json: { message: "Error"}
    end
  end
end
