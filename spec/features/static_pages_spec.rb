require 'spec_helper'

describe 'Static pages' do

  describe 'Navigation Bar' do
    it 'links to the available pages' do
      visit root_path

      find_link('how it works').visible?
      find_link('entrepreneurs').visible?
      find_link('about').visible?
      find_link('apply').visible?
      find_link('media').visible?
      find_button('donate').visible?
    end
  end

  describe 'Homepage' do
    context 'top section' do
      it 'has the kubmo slogan and links to pages of the site' do
        visit root_path

        expect(page).to have_content('A phone package and workshop can change her life forever')
        find_button('sponsor the change').visible?
        find_link('be a mentor').visible?
        find_button('spread the word').visible?
        find_button('meet the women').visible?
      end
    end

    context 'How It Works' do
      it 'has information on how the program works' do
        visit root_path

        expect(page).to have_content('The BizTech Workshop')
        expect(page).to have_content('Year-long support')
        expect(page).to have_content('Global marketplace')
      end
    end

    context 'Meet the entrepreneurs' do
      it 'lists each participating girl' do
        visit root_path

        expect(page).to have_content('Meet the Entrepreneurs')
        find_link('Diana').visible?
        find_link('Joy').visible?
        find_link('Jacinta').visible?
        find_link('Joan').visible?
        find_link('Noella').visible?
        find_link('Jullie').visible?
      end
    end

    context 'Meet the Kubmo team' do
      it 'lists all of the people behind the Kubmo initiative' do
        visit root_path

        expect(page).to have_content('Meet the Kubmo Team')
        find_link('Emma').visible?
        find_link('Kinsey').visible?
        find_link('Brooke').visible?
        find_link('John').visible?
        find_link('Claudia').visible?
      end
    end
  end

  describe 'Social media links on homepage' do
    context 'Twitter' do
      it 'has a link that visits the Kubmo Twitter' do
        visit root_path

        within('div#spread_the_word') do
          find_link('twitter').visible?
        end
      end
    end

    context 'Facebook' do
      it 'has a link that visits the Kubmo Facebook' do
        visit root_path

        within('div#spread_the_word') do
          find_link('facebook').visible?
        end
      end
    end

    context 'Pinterest' do
      it 'has a link that visits the Kubmo Pinterest' do
        visit root_path

        find_link('pinterest').visible?
      end
    end
  end

  describe 'Footer' do
    context 'Contact' do
      it 'has links to appropriate contact pages' do
        visit root_path

        within('ul#contact_footer') do
          find_link('Email Us').visible?
          find_link('facebook').visible?
          find_link('twitter').visible?
        end
      end
    end

    context 'Get Involved' do
      it 'has links to appropriate Get Involved pages' do
        visit root_path

        click_link('be a mentor')
        expect(page).to have_content('Mentor Application')

        click_link('apply for the program')
        expect(page). to have_content('Online Application for BizTech Workshop')
      end
    end

    context 'Partners' do
      it 'has links to Kubmo partners websites' do
        visit root_path

        find_link('Muthaa Community Development Foundation').visible?
        find_link('EVB').visible?
      end
    end
  end
end
