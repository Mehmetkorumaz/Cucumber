Feature: US1002 kullanici parametre olarak yazdigi urunu amazonda aratir
  Scenario: TC03 parametre ile amazonda aramá
    Given kullanici "amazonUrl" anasayfaya gider
    Then arama kutusuna "Java" yazip aratir
    And arama sonuclarinin "Java" icerdigini test eder
    Then 2 saniye bekler
    And sayfayi kapatir

    Scenario: TC04 parametre ile appele aratir
      Given kullanici amazonUrl anasayfaya gider
      Then arama kutusuna "appele" yazip aratir
      And arama sonuclarinin "appele" icerdigini test eder
      Then 5 saniye bekler
      And sayfayi kapatir