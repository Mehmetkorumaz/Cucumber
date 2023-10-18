package stepdefinitions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.NoSuchElementException;
import pages.HerokuappPage;
import utilities.ReusableMethods;

public class HerokuappStepdefinition {
    HerokuappPage herokuappPage=new HerokuappPage();

    @When("Add Element butona basar")
    public void add_element_butona_basar() {
        herokuappPage.addElementButton.click();
    }
    @When("Delete butonu gorunur oluncaya kadar bekler")
    public void delete_butonu_gorunur_oluncaya_kadar_bekler() {
        ReusableMethods.bekle(2);

    }
    @Then("Delete butonunun gorunur oldugunu test eder")
    public void delete_butonunun_gorunur_oldugunu_test_eder() {

        Assert.assertTrue(herokuappPage.deleteButton.isDisplayed());
    }
    @Then("Delete butonuna basarak butonu siler")
    public void delete_butonuna_basarak_butonu_siler() {
    herokuappPage.deleteButton.click();
    }
    @Then("Delete butonunun gorunmedigini test eder")
    public void delete_butonunun_gorunmedigini_test_eder() {
        try {
            if (herokuappPage.deleteButton.isDisplayed()){
                Assert.assertTrue(false);
            }
        } catch (NoSuchElementException e) {
                Assert.assertTrue(true);
        }
    }

}
