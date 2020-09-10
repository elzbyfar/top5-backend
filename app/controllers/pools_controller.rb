class PoolsController < ApplicationController
  def index 
    pools = Pool.all 

    render json: pools.to_json(except: [:created_at, :updated_at])
  end 

  def show 
    pool = Pool.find_by(id: params['id'])
    render json: pool.to_json(except: [:created_at, :updated_at])
  end 
end
