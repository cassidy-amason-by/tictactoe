require "selenium-webdriver"
require "rspec"
require "webdrivers/chromedriver"


describe "playing tic tac toe" do
	it "plays game 1" do
	
driver = Selenium::WebDriver.for :chrome
driver.navigate().to("https://codepen.io/CalendlyQA/full/KKPQLmV")


#enters 3 and clicks start
element1 = driver.find_elements(:id, "number")
driver.action.send_keys(element1, "3").perform
element2 = driver.find_elements(:id, "start")
driver.action.move_to(element2).click
#plays the game
element3 = driver.find_elements(:id, "0")
driver.action.move_to(element3).click
element4 = driver.find_elements(:id, "1")
driver.action.move_to(element4).click
element5 = driver.find_elements(:id, "4")
driver.action.move_to(element5).click
element6 = driver.find_elements(:id, "5")
driver.action.move_to(element6).click
element7 = driver.find_elements(:id, "8")
driver.action.move_to(element7).click


puts "Test Passed: Player X Won The Game!" if driver.find_elements(:id, "endgame")
driver.quit

end

it "plays game 2" do
	
driver = Selenium::WebDriver.for :chrome
driver.navigate().to("https://codepen.io/CalendlyQA/full/KKPQLmV")


#enters 3 and clicks start
element1 = driver.find_elements(:id, "number")
driver.action.move_to(element1).click
element2 = driver.find_elements(:id, "start")
driver.action.move_to(element2).click
#plays the game
element3 = driver.find_elements(:id, "2")
driver.action.move_to(element3).click
element4 = driver.find_elements(:id, "0")
driver.action.move_to(element4).click
element5 = driver.find_elements(:id, "5")
driver.action.move_to(element5).click
element6 = driver.find_elements(:id, "4")
driver.action.move_to(element6).click
element7 = driver.find_elements(:id, "6")
driver.action.move_to(element7).click
element8 = driver.find_elements(:id, "8")
driver.action.move_to(element8).click


puts "Test Passed: Player O Won The Game!" if driver.find_elements(:id, "endgame")
driver.quit

end

it "plays game 3" do
	
driver = Selenium::WebDriver.for :chrome
driver.navigate().to("https://codepen.io/CalendlyQA/full/KKPQLmV")


#enters 3, and clicks start
element1 = driver.find_elements(:id, "number")
driver.action.move_to(element1).click
element2 = driver.find_elements(:id, "start")
driver.action.move_to(element2).click
#plays the game
element3 = driver.find_elements(:id, "0")
driver.action.move_to(element3).click
element4 = driver.find_elements(:id, "1")
driver.action.move_to(element4).click
element5 = driver.find_elements(:id, "4")
driver.action.move_to(element5).click
element6 = driver.find_elements(:id, "2")
driver.action.move_to(element6).click
element7 = driver.find_elements(:id, "5")
driver.action.move_to(element7).click
element8 = driver.find_elements(:id, "8")
driver.action.move_to(element8).click
element8 = driver.find_elements(:id, "6")
driver.action.move_to(element8).click
element8 = driver.find_elements(:id, "3")
driver.action.move_to(element8).click
element8 = driver.find_elements(:id, "7")
driver.action.move_to(element8).click

puts "Test Passed: The Game Is A Tie!" if driver.find_elements(:id, "endgame")
driver.quit

end
end
