from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver = webdriver.Chrome(executable_path = "C:/driver/chromedriver")
driver.get("http://google.com")
#driver.maximize_window()
inputvalue = driver.find_element_by_xpath("//*[@id='tsf']/div[2]/div/div[1]/div/div[1]/input")
inputvalue.send_keys("testing")
#inputvalue.send_keys(Keys.ENTER)
list = driver.find_elements_by_xpath("//*[contains(@class,'sb11')]")
#list = driver.find_elements_by_xpath("//*[contains(@class,'sb11')]")
#list = driver.find_elements_by_xpath("//*[@class='sb11']")
#list = driver.find_elements_by_class_name("sbl1")
listlen = len(list)
print(listlen)
for li in list:
    print(li)

//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[1]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[1]/td[2]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[3]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[5]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[6]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[8]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[10]
//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[11]