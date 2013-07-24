class Donation < ActiveRecord::Base
  validates_presence_of :email

  attr_accessor :stripe_card_token, :email

  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(
        description: email,
        amount: @amount,
        card: stripe_card_token)
    end
  end
end
