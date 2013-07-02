require 'spec_helper'

describe 'Entrepreneur application process' do
  it 'links to the appropriate application form' do
    visit root_path

    click_link('apply')
    expect(page).to have_content('Online Application for BizTech Workshop')
  end

  it 'asks entrepreneur to fill out necessary fields and submit form successfully' do
    entrepreneur = FactoryGirl.create(:entrepreneur_application,
                                      name: 'Marriel',
                                      age: '19',
                                      city: 'Nairobi',
                                      number: '29123',
                                      email: 'marriel@fake.com',
                                      employed: 'no',
                                      internet: 'yes',
                                      phone_type: 'Nokia',
                                      picture: 'yes',
                                      availability: 'yes',
                                      passion: 'This is a fake passion statement',
                                      business_idea: 'I want to make purses',
                                      sustainable: 'It will be sustainable because it rocks',
                                      why: 'Because I want to empower myself',
                                      impact: 'I would be able to feed myself')
    visit new_entrepreneur_applications_path
    expect(page).to have_content('Online Application for BizTech Workshop')

    fill_in 'Name', with: entrepreneur.name
    fill_in 'Age', with: entrepreneur.age
    fill_in 'City', with: entrepreneur.city
    fill_in 'Number', with: entrepreneur.number
    fill_in 'Email', with: entrepreneur.email
    fill_in 'Employed', with: entrepreneur.employed
    fill_in 'Internet', with: entrepreneur.internet
    fill_in 'Picture', with: entrepreneur.picture
    fill_in 'Availability', with: entrepreneur.availability
    fill_in 'Passion', with: entrepreneur.passion
    fill_in 'Sustainable', with: entrepreneur.sustainable
    fill_in 'Why', with: entrepreneur.why
    fill_in 'Impact', with: entrepreneur.impact

    click_on 'Apply'

    expect(page).to have_content('thank you for applying to the BizTech workshop!')
  end
end
