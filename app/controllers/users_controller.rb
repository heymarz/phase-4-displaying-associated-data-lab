class UsersController < ApplicationController
  def show
    users = User.find_by(id: params[:id])
    render json: users, except: [:created_at, :updated_at], include: [:items]
  end
end
