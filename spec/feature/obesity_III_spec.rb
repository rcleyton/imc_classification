require 'rails_helper'

describe 'Obesity III', type: :request do
  it 'Should return classification to Obesity III' do
    post api_v1_imc_path, params: { imc: { height: 1.59, weight: 104 }}, 
    headers: {  
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9."\
      "eyJ1c2VyIjoicmhfc29mdHdhcmUifQ."\
      "tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"\
    }

    expect(response).to have_http_status(:created)
    expect(response.body).to eq({
      "imc": 41.1, 
      "classification": "Obesidade", 
      "obesity": "Grau III"
    }.to_json)
  end
end