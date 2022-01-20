require 'rails_helper'

describe 'Route protected', type: :request do
  it 'Shold return unauthorized status' do
    post api_v1_imc_path

    expect(response).to have_http_status(:unauthorized)
  end
end