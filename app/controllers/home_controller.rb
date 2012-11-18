class HomeController < ApplicationController
    layout "landing", :except => [:index]

    def index
    end

	def landing
	end
end
