require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "has the content Sample App" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "has the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', text: " | Home")
    end
  end

  describe  "Help page" do
    it "has the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "has the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', text: " | Help")
    end
  end

  describe "About page" do
    it "has the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "has the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', text: " | About Us")
    end
  end
end
