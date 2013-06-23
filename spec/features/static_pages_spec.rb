require 'spec_helper'

describe 'Static pages' do

  describe 'Navigation Bar' do
    it 'links to the available pages' do
      visit root_path

      find_link('How It Works').visible?
      find_link('The Entrepreneurs').visible?
      find_link('About Us').visible?
      find_link('Apply').visible?
      find_link('Media').visible?
      find_button('Donate').click
    end
  end

  describe 'Homepage' do
    it 'has the kubmo slogan and links to pages of the site' do
      visit root_path

      expect(page).to have_content('A phone package and workshop can change her life forever')
      find_link('Sponsor the Change').visible?
      find_link('Be a Mentor').visible?
      find_link('Spread the Word').visible?
      find_link('Meet the Women').visible?
    end
  end

  describe 'How It Works' do
    it 'has information on how the program works' do
      visit '/pages/how-it-works'

      expect(page).to have_content('TheBizTech workshop')
      expect(page).to have_content('Year-long support')
      expect(page).to have_content('Global marketplace')
    end
  end

  describe 'Meet the entrepreneurs' do
    it 'lists each participating girl' do
      visit '/pages/entrepreneurs'

      expect(page).to have_content('Marriel')
      expect(page).to have_content('Joanne')
      expect(page).to have_content('Jecinta')
    end
  end

  describe 'Meet the Kubmo team' do
    it 'lists all of the people behind the Kubmo initiative' do
      visit '/pages/team'

      expect(page).to have_content('Emma')
      expect(page).to have_content('Kinsey')
      expect(page).to have_content('Emma')
    end
  end
end
