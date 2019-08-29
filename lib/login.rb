require 'byebug'
require 'mechanize'

# do not sign in until 7:59 a.m. or later
# sign in to epicodus
mechanize = Mechanize.new
browser = mechanize.get("https://epicenter.epicodus.com/sign_in")
form = browser.form_with(:class => "")
form.email = "WhenPotatoesFry@gmail.com"
form.password = ""
form.submit
# wait 8 hours 46 minutes then sign out.
sleep 31560
browser = mechanize.get("https://epicenter.epicodus.com/sign_in")
form = browser.form_with(:class => "")
form.email = "WhenPotatoesFry@gmail.com"
form.password = ""
form.submit
