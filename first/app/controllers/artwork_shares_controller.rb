class ArtworkSharesController < ApplicationController

    def create

        artwork_share = ArtworkShare.new(artwork_share_params)

        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: 422
        end

    end

    def destroy
        @artwork_share = ArtworkShare.find(params[:id])

        @artwork_share.destroy
        render json: @artwork_share
    end

    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end

    # def index
    #     if params.has_key?(:user_id)
    #         @artwork_shares = ArtworkShare.where(user_id: params[:user_id])
    #     else
    #         @artwork_shares = ArtworkShare.all
    #     end

    #     render json: @artwork_shares
    # end

end