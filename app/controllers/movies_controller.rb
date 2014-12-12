class MoviesController < ApplicationController
  def index
  end

  def results
    data = RestClient.get 'http://www.omdbapi.com', {:params => {:s => params[:search]}}
    @results = JSON.parse(data.body)["Search"]
  end
end
