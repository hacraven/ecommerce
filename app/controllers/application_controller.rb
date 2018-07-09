class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :categories
end

def items_by_category
end

def categories
	@categories = Category.order(:name)
		
	end	
