# Requisitos
* Ruby 3.0.2
* Rails 6.1.4
* Postgres

# Descrição
Tenho um aplicativo do meu software médico, e vamos incluir uma nova feature que é o cálculo do IMC do paciente, pra isso, preciso que seja desenvolvida uma API REST que receba o peso e a altura, e retorne o resultado do IMC do paciente.

O desenvolvedor backend deverá criar uma rota HTTP POST, que receba um JSON e retorne um JSON.

A rota deverá ser: POST /imc
E esta rota deverá receber os parâmetros altura e peso, como exemplo abaixo:
```
{
    "height": 1.70,
    "weight": 76
}
```
E ele espera que o resultado retornado seja o seguinte:
```
{
    "imc": 26.3,
    "classification": "Sobrepeso",
    "obesity": "I" 
}
```
Esta rota precisa estar protegida com um Token de autenticação JWT, mas não precisa ter uma rota de Login.

# Instruções
Clone o repositório 
```
git clone git@github.com:rcleyton/imc_classification.git
```
Acesse
```
cd imc_classification
```
Criando banco e executando as migrations
```
rails db:create db:migrate
```
Instale as gems
```
bundle install
```
Levante o servidor
```
rails s
```
Para gerar o token via cURL
```
curl --location --request POST 'http://localhost:3000/auths' \
```
Para gerar o token via Postman
```
* Método **POST** para **localhost:3000/auths**
* Send
```
Para ambos os métodos, o resultado esperado é
```
{
    "token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoicmhfc29mdHdhcmUifQ.tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc"
}
```
Calcular Imc via cURL
```
curl --location --request POST 'localhost:3000/api/v1/imc' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoicmhfc29mdHdhcmUifQ.tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc' \
--data-raw '{
    "height": 1.70,
    "weight": 76
}
'
```
Calcular Imc via Postman
```
Fazer via Postman:
* Método **POST** para **localhost:3000/api/v1/imc**
* Headers: **Content-Type:** application/json e **Authorization:** Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoicmhfc29mdHdhcmUifQ.                              tSMGM1Lu2YaBdU4xxq5XHg2BAb8qYKCo3kkMp5wghvc
* Body: Marcar opção **raw** e **JSON**
* Send
```

