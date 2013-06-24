class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    raise StandardError
    redirect_to links_path
  end
end
