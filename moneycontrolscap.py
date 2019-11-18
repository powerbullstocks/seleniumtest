from selenium import webdriver
driver = webdriver.Chrome(executable_path = "C:/driver/chromedriver")
driver.get("https://www.moneycontrol.com/financials/ashok%20leyland/consolidated-balance-sheetVI/AL")
#table = len(driver.find_elements_by_xpath("//*[@id='mc_mainWrapper']/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr"))
#table = driver.find_elements_by_xpath("//*[@id='mc_mainWrapper']//descendant::div[@class='det'")
#tablerows = len(driver.find_elements_by_xpath("//*[contains(@class,'detb')]"))
tablerows = len(driver.find_elements_by_xpath("//table[@class='table4']/tbody/tr"))
tablecol = len(driver.find_elements_by_xpath("//table[@class='table4']/tbody/tr[1]/td"))
#list = driver.find_elements_by_xpath("//*[contains(@class,'detb')]")
#list = driver.find_elements_by_xpath("//table[@class='table4']/tbody/tr")

#list = driver.find_elements_by_xpath("//*[@class='table4']")
#list = driver.find_elements_by_xpath("//*[@id="mc_mainWrapper"]/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr")
print (tablerows,tablecol)

#value2 =  driver.find_element_by_xpath("//table[@class='table4']/tbody/tr[1]/td[0]").text
value1 = driver.find_element_by_xpath("//*[@id='mc_mainWrapper']/div[3]/div[2]/div[3]/div[2]/div[2]/div[2]/div[1]/table[2]/tbody/tr[1]/td[2]").text

if value1 == 'Mar 19':
   for i in range(5,tablerows-6):
     for j in range(1,7):
         value = driver.find_element_by_xpath("//table[@class='table4']/tbody/tr[" + str(i) + "]/td[" + str(j) + "]").text
         if (value == 'CURRENT LIABILITIES' or value == 'NON-CURRENT LIABILITIES' or
             value == 'ASSETS' or value == 'NON-CURRENT ASSETS' or
             value == 'CURRENT ASSETS' or value == 'OTHER ADDITIONAL INFORMATION' or
             value == 'CONTINGENT LIABILITIES, COMMITMENTS' or value == 'BONUS DETAILS' or
             value ==  'NON-CURRENT INVESTMENTS' or value == 'CURRENT INVESTMENTS'or
             value == 'EQUITIES AND LIABILITIES' or value == 'SHAREHOLDER'"'"'S FUNDS'):
               value = driver.find_element_by_xpath("//table[@class='table4']/tbody/tr[" + str(i) + "]/td[" + str(j) + "]").text
               print(value, end='  ')
               break
         else:
            value = driver.find_element_by_xpath("//table[@class='table4']/tbody/tr[" + str(i) + "]/td[" + str(j) + "]").text
            print(value,end='  ')
     print()
