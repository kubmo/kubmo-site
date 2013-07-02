class EntrepreneurApplicationsController < ApplicationController

  def create
    @entrepreneur_application = EntrepreneurApplication.new

    if @entrepreneur_application.save
      flash[:success] = Il8n.t("thank you for applying to the BizTech workshop!")
      redirect_to root_path
    else
      flash[:error] = Il8n.t("Please try again")
      render :new
    end
  end

  def new
    @entrepreneur_application = EntrepreneurApplication.new
  end
end
