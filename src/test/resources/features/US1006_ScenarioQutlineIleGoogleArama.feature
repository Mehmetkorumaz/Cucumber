Feature: US1006 verilen listedeki urunleri googlede arama
  @wip
  Scenario Outline: TC10 googlede listedeki urunler aratilabilmeli
    Given kullanici "googleUrl" anasayfaya gider
    Then googlede "<istenenKelime>" icin arama yapar
    And arama sonuclarinin "<istenenKelime>" icerdigini tes edin
    And sayfayi kapatir
    Examples:
      | istenenKelime |
      |Nutella        |
      |Java           |
      |Appele         |
      |Samsung        |
      |Wisequarter    |