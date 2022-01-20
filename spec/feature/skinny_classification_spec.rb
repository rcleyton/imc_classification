require 'rails_helper'

describe 'Skinny classification', type: :request do
  it 'Should return classification to skinny' do
    post api_v1_imc_path, params: { imc: { height: 1.90, weight: 66 }},
    headers: {  
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9."\
      "eyJ1c2VyIjoicmhfc29mdHdhcmUifQ."\
      "tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"\
    }

    expect(response).to have_http_status(:created)
    expect(response.body).to eq({
      "imc":18.3, 
      "classification": "Magreza", 
      "obesity":"Grau I"
    }.to_json)
  end
end