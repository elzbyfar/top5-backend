require 'pry'
class UsersController < ApplicationController
  
  def index 
    users = User.all 
    render json: users.to_json(except: [:created_at, :updated_at])
  end 

  def show 
    user = User.find_by(id: params['id'])
    render json: user.to_json(except: [:created_at, :updated_at])
  end 

  def create 
    user = User.new
    if user.valid?
      user = User.create(user_params) 
      render json: user.to_json
    else 
      render json: {error: 'An error has occured. Please try again'}
    end 
  end 

  def user_params
    params.require(:user).permit(:username, :password, :image, :email, :vibe)
  end 

end
