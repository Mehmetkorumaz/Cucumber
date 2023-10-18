@gsw
Feature: US1004
Scenario: TC06 gecerli EMail, gecersiz password ile basarili giris yapilamaz

  Given kullanici "qdUrl" anasayfaya gider
  Then cookies butonuna tiklar
  Then ilk login linkine tiklar
  And username kutusuna "qdGecerliEmail" yazar
  And password kutusuna "qdGecersizPassword" yazar
  And login butonuna basar
  Then basarili giris yapilamadigini test eder
  And sayfayi kapatir


  Scenario: TC07 gecersiz EMail, gecerli password ile basarili giris yapilamaz

    Given kullanici "qdUrl" anasayfaya gider
    Then cookies butonuna tiklar
    Then ilk login linkine tiklar
    And username kutusuna "qdGecersizEmail" yazar
    And password kutusuna "qdGecerliPassword" yazar
    And login butonuna basar
    Then basarili giris yapilamadigini test eder
    And sayfayi kapatir

  Scenario: TC08 gecersiz EMail, gecerli password ile basarili giris yapilamaz

    Given kullanici "qdUrl" anasayfaya gider
    Then cookies butonuna tiklar
    Then ilk login linkine tiklar
    And username kutusuna "qdGecersizEmail" yazar
    And password kutusuna "qdGecersizPassword" yazar
    And login butonuna basar
    Then basarili giris yapilamadigini test eder
    And sayfayi kapatir