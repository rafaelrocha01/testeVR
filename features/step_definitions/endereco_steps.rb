Dado('que eu tenha a url da API para consultar dados do endereço') do
  #
end

Quando('eu realizar a requisição GET para a consulta passando o cep {string} como parametro') do |cep|
  $response = @endereco.getEndereco(cep)
end

Então('a API deverá retornar o status {int}') do |code|
  expect($response.code).to eq(code)
end

Então('a a API deverá retornar um json com os dados do endereço') do
  expect("#{$response["cep"]}").to eq("01001-000")
  expect("#{$response["logradouro"]}").to eq("Praça da Sé")
  expect("#{$response["complemento"]}").to eq("lado ímpar")
  expect("#{$response["bairro"]}").to eq("Sé")
  expect("#{$response["localidade"]}").to eq("São Paulo")
  expect("#{$response["uf"]}").to eq("SP")
  expect("#{$response["ibge"]}").to eq("3550308")
  expect("#{$response["gia"]}").to eq("1004")
  expect("#{$response["ddd"]}").to eq("11")
  expect("#{$response["siafi"]}").to eq("7107")
  print"response code: #{$response.code}\n"
  print"response body: #{$response.body}"
end

Então('a API deverá retornar um json com um paramentro de erro') do
  expect("#{$response["erro"]}").to eq("true")
  print"response code: #{$response.code}\n"
  print"response body: #{$response["erro"]}"
end

