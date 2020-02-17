result_cep = CepAPI.new

Quando("busco o cep {string}") do |cep|
    @cep = cep
    @search = result_cep.searchCep(cep)
  end
  
  Então("recebo o status {string}") do |status|
    expect(@search.response.code).to eql status
  end
  
  Então("recebo o valor do campo IBGE") do
    @ibge_code = @search.parsed_response["ibge"]
    puts "O codigo do IBGE do CEP #{@cep} é #{@ibge_code}"
  end
  
  Então("recebo o valor do campo Erro como true") do 
    @erro_code = @search.parsed_response["erro"]
    expect(@erro_code).to eql true
  end