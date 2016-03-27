require 'rails_helper'

RSpec.describe "WelcomePages", type: :request do
  
  subject { page }
  
  describe "Home page" do
    before { visit root_path }

    it { should have_content('Welcome to Coffee Shop') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "About Us" do

    before { visit about_us_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end
end
