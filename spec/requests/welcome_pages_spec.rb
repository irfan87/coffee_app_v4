require 'rails_helper'

RSpec.describe "WelcomePages", type: :request do
  describe "Home page" do
  	it "should have the content 'Welcome to Coffee Shop App'" do
  		visit '/welcome_pages/home'
  		expect(page).to have_content('Welcome to Coffee Shop App')
  	end

  	it "should have the title 'Home'" do
  		visit '/welcome_pages/home'
  		expect(page).to have_title('Home')
  	end
  end

  describe "About Us" do
  	it "should have the 'About Us' link" do
  		visit '/welcome_pages/about_us'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About Us'" do
  		visit '/welcome_pages/about_us'
  		expect(page).to have_title('About Us')
  	end
  end
end
