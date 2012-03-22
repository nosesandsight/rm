class PagesController < ApplicationController
  def home
  end
  
  def program_listing
  	@programs = Program.all
  	
  end
  	
  
end
