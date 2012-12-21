require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Import or Calculate Benchmarks'" do
      visit '/static_pages/home'
      page.should have_content('Import or Calculate Benchmarks')
    end
  end
end
