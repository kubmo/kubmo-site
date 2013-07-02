require 'spec_helper'

describe 'Static pages' do

  describe 'Navigation Bar' do
    it 'links to the available pages' do
      visit root_path

      find_link('how it works').visible?
      find_link('the entrepreneurs').visible?
      find_link('about us').visible?
      find_link('apply').visible?
      find_link('media').visible?
      find_button('donate').click
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
      end
    end

    context 'Meet the Kubmo team' do
      it 'lists all of the people behind the Kubmo initiative' do
        visit root_path

        expect(page).to have_content('Meet the Kubmo Team')
      end
    end
  end
end
