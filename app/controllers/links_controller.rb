class LinksController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  def index
    @links = Link.all
  end

  def create
    @link = current_user.links.create(:url => CGI.unescape(params[:url]), :title => CGI.unescape(params[:title]), :description => CGI.unescape(params[:description]), :thumbnail_url => CGI.unescape(params[:thumbnail_url]))
    redirect_to links_path
  end
end
