require 'spec_helper'

describe 'Mentor application process' do
  it 'links to the appropriate application form' do
    mentor = FactoryGirl.create(:mentor,
                                name: 'Bob',
                                email: 'mentor@awesome.com',
                                occupation: 'teacher',
                                twitter: '@bob',
                                linkedin: 'linkedin.com/bob',
                                why: 'Because I am awesome')

    visit root_path

    click_button('be a mentor')
    expect(page).to have_content('Mentor Application')
  end

  it 'asks mentor to fill out necessary fields and submit form' do
  end

  it 'lets the user know that their application was submitted successfully' do
  end
end
