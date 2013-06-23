class TagsController < ApplicationController
  def show
    @tag = params[:id]
    @needs = Need.tagged_with(@tag)
  end
end
