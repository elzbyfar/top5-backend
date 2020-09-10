# require 'pry'
class ArtistsController < ApplicationController

  def index 
    artists = Artist.all 
    render json: artists.to_json(except: [:created_at, :updated_at])
  end 

  def show 
    artist = Artist.find_by(id: params['id'])
    render json: artist.to_json(except: [:created_at, :updated_at])
  end 

  def create 
    artist_exists = Artist.find_by(name: artist_params[:name])
    if artist_exists
      artist_exists.update(artist_params)
      render json: artist_exists
    else 
      create_artist = Artist.create(artist_params)
      render json: create_artist
    end
  end 

  def artist_params 
    params.require(:artist).permit(:name, :thumbnail, :large_image, :genres, :popularity,)
  end

end
