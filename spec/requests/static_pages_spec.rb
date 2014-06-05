require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Recepten App') }
    it { should have_title('Home') }
  end

  describe "Over de site" do
    before { visit about_path }
    it { should have_content('Over de site') }
    it { should have_title('Over de site') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title('Help') }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title('Contact') }
  end

end
