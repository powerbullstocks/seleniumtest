from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
driver = webdriver.Chrome(executable_path = "C:/driver/chromedriver.exe")
driver.get("http://google.com")
print(driver.title)
print(driver.current_url)
time.sleep(5)
driver.close() # 1 browser at a time.


