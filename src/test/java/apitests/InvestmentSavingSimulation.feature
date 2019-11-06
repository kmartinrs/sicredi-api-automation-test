Feature: Chegou a hora de poupar! Mas quanto? Em quanto tempo? Como posso saber?

  Background: 
    * url "http://5b847b30db24a100142dce1b.mockapi.io/api/v1/"
    * def sicrediapi = read('sicrediapi.json')

  Scenario: Valide se o retorno possui status 200.
    Given path 'simulador'
    When method GET
    Then status 200
    And match response == sicrediapi
    * print sicrediapi
    * print response

  Scenario: Valide se string retorna number.
    Given path 'simulador'
    When method GET
    Then status 200
    * def isNumberString = function(m) { return !isNaN(m) }
    And match response == sicrediapi
    * print sicrediapi
    * print response
