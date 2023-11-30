class UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.valid?
      render json: {message: "User has been created"}, status: :created 
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end


end
