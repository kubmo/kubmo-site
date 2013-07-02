class EntrepreneurApplicationsController < ApplicationController

  def create
    @entrepreneur_application = EntrepreneurApplication.new

    if @entrepreneur_application.save
      flash[:success] = "thank you for applying to the BizTech workshop!"
      redirect_to root_path
    else
      flash[:error] = "Please try again"
      render :new
    end
  end

  def new
    @entrepreneur_application = EntrepreneurApplication.new
  end
end
