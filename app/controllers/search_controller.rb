class SearchController < ApplicationController
  def index
	page = params.has_key?(:page)  ? params[:page] : 1
	search_term = params.has_key?(:term) ? params[:term] : ''
	@search= Product.search do
		fulltext (search_term)
		paginate :page => page, :per_page => 3
	end
  end
end
