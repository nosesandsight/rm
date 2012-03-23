class ReviewsController < ApplicationController
   def create
      @review = Review.new(params[:review])
      respond_to do |format|
        if @review.save
          format.html { redirect_to @review, :notice => 'Review was successfully created.' }
          format.json { render :json => @review, :status => :created, :location => @message }
        else
          format.html { render :action => "new" }
          format.json { render :json => @review.errors, :status => :unprocessable_entity }
        end
      end
    end

     def show
       @review = Review.find(params[:id])

       respond_to do |format|
         format.html # show.html.erb
         format.json { render :json => @review }
       end
     end

     def new
       @review = Review.new
       respond_to do |format|
         format.html # new.html.erb
         format.json { render :json => @review }
       end
     end

     def edit
       @review = Review.find(params[:id])

       respond_to do |format|
         format.html # new.html.erb
         format.json { render :json => @review }
       end
     end

     def update
       @review = Review.find(params[:id])

       respond_to do |format|
         if @review.update_attributes(params[:review])
           @review.save
           format.html { redirect_to @review, :notice => 'Review was sent.' }
           format.json { head :no_content }
         else
           format.html { render :action => "edit" }
           format.json { render :json => @message.errors, :status => :unprocessable_entity }
         end
       end
     end

     def destroy
       @review = Review.find(params[:id])
       @review.destroy

     end
     
     def make
       @review = Review.find(params[:id])
        respond_to do |format|
          format.html # new.html.erb
          format.json { render :json => @review }
        end
      end

end
