require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Recepten App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Recepten App')
    end
  end

  describe "About page" do

    it "should have the content 'Over'" do
      visit '/static_pages/about'
      expect(page).to have_content('Over')
    end
  end


  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

end
