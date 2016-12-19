require 'calabash-android/calabash_steps'
require 'selenium-webdriver'
require 'rspec'
include RSpec::Matchers
require 'gmail'



def setup
  @driver = Selenium::WebDriver.for :firefox
end

def teardown
  @driver.quit
end

def run
  setup
end



def doit


	gmail = Gmail.new("untestor@gmail.com", "Avatar1260")

	@unreadFromTrusted=gmail.inbox.emails(:unread,:from => "no-reply@bounce-staging.thetrustedinsight.com").last

	message_body = @unreadFromTrusted.message.body.raw_source



	url =  message_body.scan(/https:\/\/.*\n.*(?=\/>)/).first

	url.gsub! '=',''
	

	puts url

	gmail.inbox.emails(:from => "no-reply@bounce-staging.thetrustedinsight.com").each do |email|
  		email.delete!
	end

	gmail.logout


	run()
	@driver.get(url)

	

	
	@driver.switchTo().alert().sendKeys("Hello")

	@driver.findElement(By.id("userID")).sendKeys("ti_test");

	@driver.findElement(By.id("password")).sendKeys("ti_test");

	@driver.switchTo().alert().accept();


	@driver.find_element(id: 'id_password').send_keys("B1tchA$$3")
	@driver.find_element(id: 'id_confirm_password').click
	@driver.find_element(id: 'id_confirm_password').send_keys("B1tchA$$3")

	sleep(10)
	@driver.quit

=begin
  @driver.get 'https://accounts.google.com/ServiceLogin?service=mail&continue=https://mail.google.com/mail/&hl=ru#identifier'
  @driver.find_element(id: 'Email').send_keys("sublio1260@gmail.com")
  @driver.find_element(id: 'next').click
  sleep(3)
  @driver.find_element(id: 'Passwd').click
  @driver.find_element(id: 'Passwd').send_keys("avatar1260")
  @driver.find_element(id: 'signIn').click


  gmail = Gmail.new("sublio1260@gmail.com", "avatar1260")

  puts(gmail.inbox.count)


  gmail = Gmail.new(ENV['sublio1260@gmail.com'], ENV['avatar1260'])
  try(6) { @email = gmail.inbox.emails(:unread, from: 'no-reply@bounce-staging.thetrustedinsight.com').last }
  message_body = @email.message.body.raw_source

  puts (message_body)
  #url =  message_body.scan(/https?:\/\/[\S]+/).last
  #username = message_body.scan(/username: (.*)$/)[0][0].strip
  #password = message_body.scan(/password: (.*)$/)[0][0].strip

  @driver.get url
  @driver.find_element(id: 'username').send_keys username
  @driver.find_element(id: 'password').send_keys password
  @driver.find_element(id: 'login').submit
  expect(@driver.current_url.include?('/secure')).to eql true
=end
end



And /^I should receive mail for reseting password$/ do
	sleep(5)
	doit
end



def try(number_of_times)
  count = 0 ; item_of_interest = nil
  until item_of_interest != nil || count == number_of_times
    item_of_interest = yield
    sleep 10
    count += 1
  end
end


