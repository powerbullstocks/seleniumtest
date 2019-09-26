from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
import time
driver = webdriver.Chrome(executable_path= "C:/driver/chromedriver.exe" )
#driver = webdriver.Ie(executable_path= "C:/driver/IEDriverServer.exe" )
#driver.get("https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407")
driver.get("https://www.toolsqa.com/automation-practice-form/")
#driver.maximize_window()
#driver.find_element_by_css_selector("input[id='RESULT_RadioButton-7_1'][value='Radio-1']").click()

#element = driver.find_element_by_css_selector("input[id='sex-0'][value='Male']") # working
element = driver.find_element_by_id("sex-1")
element.click()
print(element.is_selected())
#element = driver.find_element_by_id("RESULT_RadioButton-7_1")
#element = WebDriverWait(driver,20).until(EC.element_to_be_clickable((By.XPATH,"//*[@id='RESULT_RadioButton-7_1")))
#element.click()

#driver.find_element_by_xpath("//*[@id='RESULT_RadioButton-7_1']").click()
#time.sleep(2)
#radiobut.click()
# oneway_ele = driver.find_element_by_css_selector("input[type='radio'][value='oneway']")
# radiobut.click()
#print(radiobut)