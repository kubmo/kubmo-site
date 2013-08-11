class Donation < ActiveRecord::Base
  validates_presence_of :email, :number, :exp_month, :exp_year, :cvc, :name, :amount

  attr_accessor :number, :exp_month, :exp_year, :cvc, :name, :email, :amount

  def amount=(amount)
    @amount = amount.to_f
  end

  def charge_card
    if valid?
      charge = Stripe::Charge.create(
        :amount => (amount*100).to_i,
        :currency => "usd",
        :description => "payinguser@example.com",
        :card => {
          number: number,
          exp_month: exp_month,
          exp_year: exp_year,
          cvc: cvc,
          name: name
        })
    end
  end
end
