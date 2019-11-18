require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
    chromedriver_path = 'browsers/chromedriver.exe'
    raise "Cannot found ChromeDriver on #{chromedriver_path}" if !File.file?(chromedriver_path)
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path

    profile = Selenium::WebDriver::Chrome::Profile.new
    profile['extensions.password_manager_enabled'] = false
    Capybara::Selenium::Driver.new(app, :browser => :chrome, profile: profile)
end

Capybara.configure do |config|

    config.default_driver = :chrome

end 