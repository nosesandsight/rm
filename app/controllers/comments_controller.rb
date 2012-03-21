class CommentsController < ApplicationController
   def create
      @organization = Organization.find(params[:organization_id])
      @comment = @organization.comments.create(params[:comment])
      redirect_to organization_path(@organization)
    end
  end
