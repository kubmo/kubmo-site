class DonationsController < ApplicationController
  def create
    @donation = Donation.new(params[:donation])
    if @donation.charge_card
      redirect_to root_path, :notice => "Thank you for your donation"
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
