Feature: US1001 kullanici amazon sayfada arama yapar
  Scenario: TC01 Kullanici amazonda Nutella aratir
    Given kullanici amazonUrl anasayfaya gider
    And arama kutusuna Nutella yazip aratir
    Then arama sonuclarinin Nutella icerdigini test eder
    And sayfayi kapatir
    Scenario: TC02 Kullanici amazonda Java aratir
      Given kullanici amazonUrl anasayfaya gider
      And arama kutusuna java yazip aratir
      Then arama sonuclairni Java icerdigini test eder
      And 2 saniye bekler
      And sayfayi kapatir