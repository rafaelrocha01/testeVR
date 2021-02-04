class Endereco
  include HTTParty

  def initialize()
  end

  def getEndereco (cep)
    self.class.base_uri("https://viacep.com.br/ws/#{cep}/json")
    self.class.get("", :debug_output => $stdout)
  end
end
