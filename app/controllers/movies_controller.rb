class MoviesController < ApplicationController

	def search
		# Just renders the search form
	end

  def results
    data = RestClient.get 'http://www.omdbapi.com', {:params => {:s => params[:search]}}
    @results = JSON.parse(data.body)["Search"]
  end

  def show
    data = RestClient.get 'http://www.omdbapi.com', {:params => {:i => params[:id]}}
    @movie = JSON.parse(data.body)
  end

end
