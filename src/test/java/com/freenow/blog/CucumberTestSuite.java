package com.freenow.blog;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
    plugin = {"pretty"},
    features = "src/test/resources/features",
        glue = {"com/freenow/blog/stepdefinitions"}
)
public class CucumberTestSuite {

}
