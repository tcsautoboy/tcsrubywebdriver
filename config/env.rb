require 'selenium-webdriver'

#Drivers
Selenium::WebDriver::Chrome::Service.executable_path = File.join(Dir.pwd, './vendor/chromedriver')
$driver = Selenium::WebDriver.for :chrome


#Environment Variables:

ENV['base_url']     ||= 'http://www.tstpreview.containerstore.com'
ENV['payment_info'] ||= '../data/payment_info.csv'