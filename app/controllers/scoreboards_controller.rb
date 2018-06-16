class ScoreboardsController < ApplicationController
    before_action :find_scoreboard, only: [:edit, :update, :destroy]
    def index
        @scoreboards = Scoreboard.all.order("created_at DESC")
    end
    def show
       
    end
    def new
        @scoreboard = Scoreboard.new
    end
    
    def create
        @scoreboard = Scoreboard.new(scoreboard_params)
        
        if @scoreboard.save 
            redirect_to root_path
        else
           render 'new'
        end
    end
    
    private
    
    def scoreboard_params
        params.require(:scoreboard).permit(:eventdate, :bpecode, :organization, :code, :description)
    end
    
    def find_scoreboard
         @scoreboard = Scoreboard.find(params[:id])
    end
end

