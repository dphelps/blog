Given /^a user visits the signup page$/ do
  visit signup_path
end

When /^he submits invalid signup information$/ do
  fill_in "Name",         :with => ""
  fill_in "Email",        :with => ""
  fill_in "Password",     :with => ""
  fill_in "Confirmation", :with => ""
  click_button('Create my account')
end

Then /^he should see an error message$/ do
  page.should have_selector("div#error_explanation")
end

When /^he submits valid signup information$/ do
  fill_in "Name",         :with => "Prof D"
  fill_in "Email",        :with => "dphelps@cmu.edu"
  fill_in "Password",     :with => "test123"
  fill_in "Confirmation", :with => "test123"
  click_button('Create my account')
end

Then /^he should see a welcome message$/ do
  page.should have_selector("div.alert.alert-success", :content => "Welcome")
end