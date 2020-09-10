class ListsController < ApplicationController


  def index 
    lists = List.all 
    render json: lists.to_json(except: [:created_at, :updated_at])
  end 

  def show 
    list = List.find_by(id: params['id'])
    render json: list.to_json(except: [:created_at, :updated_at])
  end 

  def create 
    list = List.new 

    if list.valid 
      list = List.create(list_params)
      render json: list
    else 
      render json: {error: 'An error has occured. Please try again'}
    end 
  end

  def update 
    list = List.find_by(id: params['id'])
    list.update(list_params)
  end 

  def list_params 
    params.require(:list).permit(:user_id, :thread_name, entries: [])
  end 

end
