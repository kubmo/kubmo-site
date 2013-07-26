class DonationsController < ApplicationController
  def create
    @donation = Donation.new(params[:donation])
    if @donation.save_with_payment
      redirect_to @donation, :notice => "Thank you for your donation"
    else
      render :new
    end
  end

  def new
    @donation = Donation.new
  end

  def index
  end
end
