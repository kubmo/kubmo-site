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
                                      number: '2983898123',
                                      email: 'marriel@fake.com',
                                      student: 'yes',
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
    expect(page).to have_content('Entrepreneur Application')
  end
end
