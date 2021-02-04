#language: pt
@consultar_endereco
Funcionalidade: consultar dados de um endereço
Como usuário da API
Eu quero realizar uma requisição para consultar os
dados de um endereço

Cenário:  Consultar dados de endereço com cep válido
  Dado que eu tenha a url da API para consultar dados do endereço
  Quando eu realizar a requisição GET para a consulta passando o cep "01001000" como parametro
  Então a API deverá retornar o status 200
  E a a API deverá retornar um json com os dados do endereço

  Cenário:  Consultar dados de endereço com cep inválido
    Dado que eu tenha a url da API para consultar dados do endereço
    Quando eu realizar a requisição GET para a consulta passando o cep "00000000" como parametro
    Então a API deverá retornar o status 200
    E a API deverá retornar um json com um paramentro de erro