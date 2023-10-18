Feature: US1007 liste olarak verilen kullanici adi ve sifrelerle giris yapilamadigini test edin

  Scenario Outline: TC11 qalitydemy sayfasina yanlis bilgilerle giris yapilamaz

    Given kullanici "qdUrl" anasayfaya gider
    Then cookies butonuna tiklar
    Then ilk login linkine tiklar
    And username kutusuna "<qdGecersizEmail>" yazar
    And password kutusuna "<qdgecersizPassword>" yazar
    And login butonuna basar
    Then basarili giris yapilamadigini test eder
    And sayfayi kapatir
    Examples:
      | qdGecersizEmail | qdgecersizPassword |
      |Suha             |12345               |
      |Nergiz           |34521               |
      |Omer             |786543              |
      |Mehmet           |98098               |
      |Ertugrul         |87675098            |






