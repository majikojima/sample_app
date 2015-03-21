require 'spec_helper'

describe "Static pages" do
    
    let(:base_title){"Ruby on Rails Tutorial Sample App"}
    
    describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end
    end
    
    describe "Home page" do
        it "should have the right title" do
            visit '/static_pages/home'
            expect(page).to have_title("#{base_title}")
        end
    end
    
    describe "Home page" do
        it "should habe a custom page title" do
            visit '/static_pages/home'
            expect(page).not_to have_title('| Home')
        end
    end
    
    describe "Help page" do
       it "should have the content 'Help'" do
           visit '/static_pages/help'
           expect(page).to have_content('Help')
        end
    end
    
    describe "Help page" do
        it "should have the right title" do
            visit '/static_pages/help'
            expect(page).to have_title("#{base_title} | Help")
        end
    end
    
    describe "About US" do
       it "should have the content 'About Us'" do
           visit '/static_pages/about'
           expect(page).to have_content('About Us')
        end
    end
    
    describe "About Us" do
        it "should have the right title" do
            visit '/static_pages/about'
            expect(page).to have_title("#{base_title} | About Us")
        end
    end
    
    describe "Contact" do
        it "should have the content 'Contact'" do
            visit '/static_pages/contact'
            expect(page).to have_content("Contact")
        end
    end
    
    describe "Contact" do
        it "should have right title" do
            visit '/static_pages/contact'
            expect(page).to have_title("#{base_title} | Contact")
        end
    end
end