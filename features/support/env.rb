require "httparty"

class CepAPI
    include HTTParty
    base_uri "https://viacep.com.br"

    def searchCep(cep)
        @seach = self.class.get("/ws/#{cep}/json")
    end
end