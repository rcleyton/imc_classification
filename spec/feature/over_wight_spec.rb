require 'rails_helper'

describe 'Overweight', type: :request do
  it 'Should return classification to Overweight' do
    post api_v1_imc_path, params: { imc: { height: 1.7, weight: 82 }}, 
    headers: {  
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9."\
      "eyJ1c2VyIjoicmhfc29mdHdhcmUifQ."\
      "tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"\
    }

    expect(response).to have_http_status(:created)
    expect(response.body).to eq({
      "imc": 28.4, 
      "classification": "Sobrepeso", 
      "obesity": "Grau I"
    }.to_json)
  end
end