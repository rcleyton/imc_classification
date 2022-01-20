Rails.application.routes.draw do
  resources :auths, only: [:create]

  namespace 'api' do
  	namespace 'v1' do
      post 'imc', to: 'imcs#create'
  	end
  end
  
end
