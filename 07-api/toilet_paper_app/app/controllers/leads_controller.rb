class LeadsController < ApplicationController

  def new
  end

  def index
    @leads = Lead.all
    render :index 
  end

  def create
    @lead = Lead.new
    @lead.email = params[:email]
    if @lead.save
      redirect_to '/leads'
    else
      render :new 
    end
  end
end
