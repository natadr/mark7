require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if @browser.eql?('headless')
    puts 'Executando com Headless'

    Capybara.javascript_driver = :selenium 
    Capybara.run_server = false

    args = ['--no-default-browser-check']

    caps = selenium::WebDriver::Remote::Capabilities.chrome{
        'chromeOptions' => { 'args' => args }
    }

    Capybara.register_driver :selenium do |app|
        Capybara::selenium::Driver.new{
            app,
            browser: :remote,
            url: 'http://selenium:4444/wd/hub',
            desired_capabilities: caps
        }
    end
else
    puts 'Executando sem Headless'
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://mark7.herokuapp.com'
end

Capybara.default_max_wait_time = 5
