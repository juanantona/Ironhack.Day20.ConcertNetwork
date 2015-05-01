class ConcertsController < ApplicationController

  def index
  	@concerts = Concert.all
  end 

  def new
    @concert = Concert.new
  end	

  def create
  	
  	@concert = Concert.new ({band: params[:concert][:band], venue: params[:concert][:venue], city: params[:concert][:city]})
    
    if @concert.save
       redirec_to "concerts"
    else
      render "new"
    end     

  end

end
