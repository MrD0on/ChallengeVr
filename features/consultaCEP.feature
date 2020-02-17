#language: pt
Funcionalidade: Consulta CEP da API
    Sendo um usuário que desejo capturar  dados de um CEP
    Devo acessar a API do viaCEP
    Para opter os dados do IBGE

    @case_success
    Cenário: Buscando o IBGE de um CEP
        Quando busco o cep "01001000"
        Então recebo o status "200"
        E recebo o valor do campo IBGE

    @case_invalid
    Cenário: Buscando um CEP inválido com dígitos a mais
        Quando busco o cep "123456700"
        Então recebo o status "400"
    
    @case_fail    
    Cenário: Buscando um CEP inexistente
        Quando busco o cep "11001000"
        Então recebo o status "200"
        E recebo o valor do campo Erro como true

