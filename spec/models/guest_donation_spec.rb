require 'spec_helper'

describe GuestDonation, '#donation' do
  it 'creates a Donation' do
    stub_payment_processor
    guest_donation = GuestDonation.new(guest_donation_params)

    guest_donation.donate

    expect(Guest.count).to eq 1
    expect(Donation.count).to eq 1
  end

  context 'when an email exists' do
    it 'creates a donation' do
      stub_payment_processor
      guest = create(:guest)
      guest_donation = GuestDonation.new(guest_donation_params(email: guest.email))

      guest_donation.donate

      expect(Guest.count).to eq 2
      expect(Donation.count).to eq 1
    end
  end

  def stub_payment_processor
    PaymentProcessor.
      stubs(:create_customer_with_subscription).
      returns(stub(id: 'customer_token'))
  end

  def guest_donation_params(overrides = {})
    attributes_for(:guest_donation, overrides)
  end
end
