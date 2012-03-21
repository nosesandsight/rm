class ReviewsController < ApplicationController
   def create
      @program = Program.find(params[:program_id])
      @review = @program.reviews.create(params[:review])
      redirect_to program_path(@program)
    end

end
