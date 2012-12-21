require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Import or Calculate Benchmarks'" do
      visit '/static_pages/home'
      page.should have_content('Import or Calculate Benchmarks')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "| Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "About page" do
    it "should have the content 'Shuntyard'" do
      visit '/static_pages/about'
      page.should have_content('Shuntyard')
    end
  end
end
