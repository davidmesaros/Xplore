# class HomeController < ApplicationController
# 	def index
# 	end
# 	def search
# 		parameters = { term: pramas[:term], limit: 4}
# 		render json: Yelp.client.search('Sydney', parameters )
# 	end
# end

class HomeController < ApplicationController
  def index
  end

  def search
  	# Search term (e.g. "food", "restaurants"). If term isn't included we search everything.
    parameters = { term: params[:term]} #,limit: 20 
    render json: Yelp.client.search('Sydney', parameters)
  end

end