from selenium import webdriver //you'll need to install python, pip3, selenium and chrome web driver for this to work
from selenium.webdriver.common.keys import Keys
from webdriver_manager.chrome import ChromeDriverManager
import time

driver = webdriver.Chrome(ChromeDriverManager().install())

time.sleep(2)
url2 = "https://www.amazon.co.uk/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.uk%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=gbflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"
username = 'REPLACEWITHEMAIL'
password = 'REPLACEWITHPASSWORD'
time.sleep(2)
driver.get(url2)
driver.find_element_by_id('ap_email').send_keys(username)
driver.find_element_by_id('continue').click()
time.sleep(2)
driver.find_element_by_id('ap_password').send_keys(password)
driver.find_element_by_id('signInSubmit').click()
