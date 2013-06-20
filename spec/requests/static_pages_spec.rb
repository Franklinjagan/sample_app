require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
   it "should have the content 'Sample App'" do
visit '/static_pages/home'
page.should have_selector('title',
:text => "#{base_title} | Home")
end
it "should have the h1 'Sample App'" do
visit '/static_pages/home'
page.should have_selector('h1', :text => 'Sample App')
end
  end

    describe "Help Page" do
   it "should have the content 'Help'" do
visit '/static_pages/help'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | Help")

end
it "should have the h1 'Sample App'" do
visit '/static_pages/help'
page.should have_selector('h1', :text => 'Help')
end
  end
  describe "About page" do
it "should have the content 'About Us'" do
visit '/static_pages/about'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | About")

end
it "should have the h1 'Sample App'" do
visit '/static_pages/about'
page.should have_selector('h1', :text => 'About Us')
end
end
 describe "Contact page" do
it "should have the content 'Contact Us'" do
visit '/static_pages/contact'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | Contact")

end
it "should have the h1 'Sample App'" do
visit '/static_pages/contact'
page.should have_selector('h1', :text => 'Contact Us')
end
end
end
