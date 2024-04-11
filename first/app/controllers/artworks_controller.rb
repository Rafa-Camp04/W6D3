class ArtworksController < ApplicationController

    def index
        # render plain:"index_action"

        if params.has_key?(:user_id)
            @artworks = Artwork.where(artist_id: params[:user_id])
        else
            @artworks = Artwork.all
        end
   
        render json: @artworks
    end

    def create
        artwork = Artwork.new(artwork_params)

            if artwork.save
                render json: artwork
            else
                render json: artwork.errors.full_messages, status: 422
            end

        # replace the `user_attributes_here` with the actual attribute keys
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def update

        @artwork = Artwork.find(params[:id])

        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def destroy

        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        render json: @artwork
        # redirect_to users_url
    end

    def artwork_params 
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

end