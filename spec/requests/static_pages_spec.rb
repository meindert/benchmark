require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Import or Calculate Benchmarks'" do
      visit '/static_pages/home'
      page.should have_content('Import or Calculate Benchmarks')
    end
    it "should have the right dutch title" do
      visit '/static_pages/home?locale=nl'
      page.should have_selector('title',
                                :text => "Maatstaver")
    end
    it "should have the right english title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Benchmarker")
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
