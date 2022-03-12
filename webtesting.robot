*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${browser}  ff
${url}  https://demo.nopcommerce.com/

*** Test Cases ***

LoginTest
    open browser        ${url}  ${browser}
    login_to_application
    close browser

*** Keywords ***
Set Environment Variable    webdriver.gecko.driver    /usr/local/bin/geckodriver

login_to_application
    click link  xpath://a[@class='ico-login']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id: Password    Test@123
    click element   xpath://input[@class='button-1 login-button']