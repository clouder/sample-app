require 'spec_helper'

describe "Static pages" do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home page" do
    it "has the header Sample App" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "has the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "#{base_title} | Home")
    end
  end

  describe  "Help page" do

    it "has the header 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "has the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "#{base_title} | Help")
    end

    it 'looks like it passes in tork output' do
      [1 2, 3, 4]
      true.should_not be
    end
  end

  describe "About page" do
    it "has the header 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "has the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "has the header 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact Us')
    end

    it "has the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', text: "#{base_title} | Contact Us")
    end
  end
end
