require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"Ruby on rails sample app"}

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")
    end

    it "should not  have a custom title" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title('| Home') 
    end


  end

  describe "Help Page" do
  	it "Should habe the content 'Hekp'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  	it "should have the right title" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do
  	it "should have content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  	it "should have the right title" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About")
    end
  end

describe "Contact Page" do
  	it "should have content 'Contact Us'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact Us')
  	end
  	it "should have the right title" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("#{base_title} | Contact")
    end
  end


end
