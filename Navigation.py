from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
driver = webdriver.Chrome(executable_path= "C:/driver/chromedriver.exe" )
driver.get("http://newtours.demoaut.com")
driver.get("http://google.com")
driver.maximize_window()
driver.back()
time.sleep(3)
driver.forward()
driver.close()