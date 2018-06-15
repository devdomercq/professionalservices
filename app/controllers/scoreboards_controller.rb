class ScoreboardsController < ApplicationController
    
    def index
    end
    
    def new
        @scoreboard = Scoreboard.new
    end
    
    def create
        @scoreboard = Scoreboard.new(play_params)
    end
    
    private
    
    def scoreboard_params
        params.require(:scoreboard).permit(:bpecode, :organization, :code, :description, :eventdate)
    end
end

