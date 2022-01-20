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

