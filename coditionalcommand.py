from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
driver = webdriver.Chrome(executable_path= "C:/driver/chromedriver.exe" )
driver.get("http://newtours.demoaut.com")

username_ele = driver.find_element_by_name('userName')
#username_ele = driver.find_element_by_xpath("/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/input").click()
username_ele.send_keys("mercury")
print(username_ele.is_displayed())
print(username_ele.is_enabled())
password = driver.find_element(By.NAME,"password")
password.send_keys("mercury")
password.send_keys(Keys.ENTER)
oneway_ele = driver.find_element_by_css_selector("input[type='radio'][value='oneway']")
oneway_ele.click()
print(oneway_ele.is_selected())

#driver.find_element_by_xpath("/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a").click()

