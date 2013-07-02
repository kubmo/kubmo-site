class MentorsController < ApplicationController

  def create
    @mentor = Mentor.new

    if @mentor.save
      flash[:success] = "thank you for applying!"
      redirect_to root_path
    else
      flash[:error] = "please try again"
      render :new
    end
  end

  def new
    @mentor = Mentor.new
  end
end
