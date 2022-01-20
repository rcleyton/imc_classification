require 'rails_helper'

describe 'Obesity II', type: :request do
  it 'Should return classification to Obesity II' do
    post api_v1_imc_path, params: { imc: { height: 1.65, weight: 97 }}, 
    headers: {  
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9."\
      "eyJ1c2VyIjoicmhfc29mdHdhcmUifQ."\
      "tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"\
    }

    expect(response).to have_http_status(:created)
    expect(response.body).to eq({
      "imc": 35.6, 
      "classification": "Obesidade", 
      "obesity": "Grau II"
    }.to_json)
  end
end