class AuthsController < ApplicationController
  def create
    hmac_secret = 'my$ecretK3y'
    payload = { user: 'rh_software' }
    token = JWT.encode payload, hmac_secret, 'HS256'
    render json: { token: token }
  end
end