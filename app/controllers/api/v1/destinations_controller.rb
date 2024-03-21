class Api::V1::DestinationsController  < ApplicationController
    

    def index
        @destinations = Destination.all
        render json: @destinations
    end

    def show
        @destination = Destination.find(params[:id])
        render json: @destination
        rescue ActiveRecord::RecordNotFound
            render json: { status: 404, message: "Destination not found" }, status: :not_found
    end
end