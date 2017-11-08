class SiteController < ApplicationController
  def search
  	# @artists = Artist.where("name like '%#{params[:term]}%'")
  # 	unless params[:search_term].nil?
  # 	@artists = Artist.where("name like ?", "%#{params[:search_term]}%")
  # end
  unless params[:search_term].nil?
  artists = Artist.where("name like ?", "%#{params[:search_term]}%") 
  albums =Album.where("name like ?", "%#{params[:search_term]}%")
  labels = Label.where("name like ?", "%#{params[:search_term]}%")
  @results = artists + albums + labels
end
end
end
