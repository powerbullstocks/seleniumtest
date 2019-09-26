from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
import time
driver = webdriver.Chrome(executable_path= "C:/driver/chromedriver.exe" )
#driver.get("http://newtours.demoaut.com")
#driver.implicitly_wait(10) # 10 seconds
#assert "Welcome: Mercury Tours" in driver.title
driver.get("http://expedia.com")
#driver.implicitly_wait(10)
driver.find_element(By.ID,"tab-flight-tab-hp").click()
origin = driver.find_element(By.ID,"flight-origin-hp-flight")
#origin.click()
#origin.clear()
origin.send_keys("Boston, MA, United States (BOS)")
origin.send_keys(Keys.TAB)
destin = driver.find_element(By.ID,"flight-destination-hp-flight")
destin.click()
destin.send_keys("San Francisco, California")
depart = driver.find_element(By.ID,"flight-departing-hp-flight")
depart.clear()
depart.send_keys("07/22/2019")
returns = driver.find_element(By.ID,"flight-returning-hp-flight")
time.sleep(2)
returns.clear()
returns.send_keys("07/30/2019")
returns.send_keys(Keys.ENTER)
#driver.find_element(By.XPATH,"//*[@id='stopFilter_stops-0']")
wait = WebDriverWait(driver,10)
element = wait.until(EC.element_to_be_clickable((By.XPATH,"//*[@id='stopFilter_stops-0']"))) # explicity condition need to import package. selectable, clickable,alert
element.click()
#driver.find_element_by_xpath("//*[@id='stopFilter_stops-0']").click()



