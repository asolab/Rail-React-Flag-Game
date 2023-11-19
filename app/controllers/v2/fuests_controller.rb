module V2
    class FuestsController < ApplicationController
    def index
    limit = params[:limit] || 1
    difficulties = params[:difficulties] || 'hard'
    
    
    fuests = Fuest.where(difficulty: difficulties).order('RANDOM()').limit(limit)
    
    
    render json: fuests
  end
    
  end
end