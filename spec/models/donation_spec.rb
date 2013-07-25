require 'spec_helper'

describe Donation, 'Validations' do
  it { should validate_presence_of :amount }
  it { should validate_presence_of :email }
end

describe Donation, '#create' do
end

