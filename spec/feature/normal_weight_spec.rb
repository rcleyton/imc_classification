require 'rails_helper'

describe 'Normal weight', type: :request do
  it 'Should return classification to Normal Weight' do
    post api_v1_imc_path, params: { imc: { height: 1.7, weight: 68 }}, 
    headers: {  
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9."\
      "eyJ1c2VyIjoicmhfc29mdHdhcmUifQ."\
      "tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"\
    }

    expect(response).to have_http_status(:created)
    expect(response.body).to eq({
      "imc": 23.5, 
      "classification": "Peso Normal", 
      "obesity": "0"
    }.to_json)
  end
end