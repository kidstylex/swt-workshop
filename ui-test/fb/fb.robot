*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test login and post on facebook
    พิมพ์ facebook.com
    พิมพ์emailและpassword
    Post Hi,robot framework

*** Keywords ***
พิมพ์ facebook.com
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    Open Browser    https://www.facebook.com/    chrome    options=${options}

พิมพ์emailและpassword
    Input Text    id:email    chilizhiki@gmail.com
    Input Text    id:pass    
    Press Keys    id:u_0_b    RETURN

Post Hi,robot framework
	Wait Until Page Contains    What's on your mind, Mimew?
    Click Element    css: div.oajrlxb2.b3i9ofy5.qu0x051f.esr5mh6w.e9989ue4
    Wait Until Page Contains    Add to your post
    Press Keys    None    Hi,robot framework
    Click Element    css: div.oajrlxb2.s1i5eluu.qu0x051f.esr5mh6w.e9989ue4