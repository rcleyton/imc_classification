module Api
  module V1
    class ImcsController < ApplicationController  
      include ActionController::HttpAuthentication::Token::ControllerMethods
      before_action :authenticate, only: [:create]

      def create
        @imc = Imc.new(imc_params)
        if @imc.save
          render json: @imc, status: :created
				else
					render json: @imc.errors, status: :unprocessable_entity
				end
      end

      private

      def imc_params
        params.require(:imc).permit(:height, :weight)
      end

      def authenticate
        authenticate_or_request_with_http_token do |token, options|
          hmac_secret = 'my$ecretK3y'
          JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
        end
      end

    end
  end
end