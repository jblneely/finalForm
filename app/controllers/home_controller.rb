class HomeController < ApplicationController
  def index
  	@actns = Actn.all
  	@dates = []
  	@actns.each do |a|
  		@dates.push a.closed.strftime('%m/%d/%Y')
  	end
  end
end
