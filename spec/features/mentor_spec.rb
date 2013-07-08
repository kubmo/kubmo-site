require 'spec_helper'

describe 'Mentor application process' do
  it 'links to the appropriate application form' do
    visit root_path

    click_link('Be a Mentor')
    expect(page).to have_content('Mentor Application')
  end

  it 'asks mentor to fill out necessary fields and submit form successfully' do
    mentor = FactoryGirl.create(:mentor,
                                name: 'Bob',
                                email: 'mentor@awesome.com',
                                occupation: 'teacher',
                                twitter: '@bob',
                                linkedin: 'linkedin.com/bob',
                                why: 'Because I am awesome')
    visit new_mentor_path
    expect(page).to have_content('Mentor Application')

    fill_in 'Name', with: mentor.name
    fill_in 'Email', with: mentor.email
    fill_in 'Occupation', with: mentor.occupation
    fill_in 'Twitter', with: mentor.twitter
    fill_in 'Linkedin', with: mentor.linkedin
    fill_in 'Why', with: mentor.why

    click_on 'Apply'

    expect(page).to have_content('thank you for applying!')
  end
end
