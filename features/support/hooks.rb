
require 'date'
require_relative 'helper.rb'

AfterStep do |scenario|
  @count = 0 if @count.nil?

  @helper = Helper.new
#   @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'')
  nome = Time.now.to_i.to_s + ' ' + @count.to_s

  @count += 1

  if scenario.failed?
    @helper.take_screenshot(nome, 'screenshots/test_failed') 
  else
    @helper.take_screenshot(nome, 'screenshot/test_passed')      
  end
end   