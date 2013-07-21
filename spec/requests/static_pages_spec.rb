require 'spec_helper'

describe "Static pages" do

  subject { page }
  describe "Home page" do
    before { visit root_path }

    it { should have_content('Connect To Friends') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      expect(page).to have_title(full_title('About Me'))
      click_link "Help"
      expect(page).to have_title(full_title('Help'))
      click_link "Contact"
      expect(page).to have_title(full_title('Contact'))
      click_link "Home"
      click_link "Sign up now!"
      expect(page).to have_title(full_title('Sign up'))
      click_link 'Connect To Friends'
      expect(page).to have_title(full_title(''))
    end
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Me') }
    it { should have_title(full_title('About Me')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
 end