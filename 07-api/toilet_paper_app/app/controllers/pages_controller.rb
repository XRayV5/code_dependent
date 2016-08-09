class PagesController < ApplicationController

  def home
    @lead = Lead.new
  end

  def about
  end

  def donate
  end

  def thanks
  end

  def new_lead
    @lead = Lead.new
    @lead.email = params[:email]
    if @lead.save
      redirect_to '/thanks'
    else
      render :home
    end
  end
end
