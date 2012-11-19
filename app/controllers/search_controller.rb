class SearchController < ApplicationController
  def index
	page = params.has_key?(:page)  ? params[:page] : 1
	search_term = params.has_key?(:term) ? params[:page] : "Fender"
	@search= Product.search do
		fulltext ("Fender")
		paginate :page => page, :per_page => 3
	end
	puts @search.total	
  end
end
