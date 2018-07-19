class GivingCentersController < ApplicationController

    before_action :find_giving_center, only: [:edit, :update, :destroy]
    def index
        @Giving_Centers = GivingCenter.all.order("created_at DESC")
    end
    def show
       
    end
    def new
        @Giving_Center = GivingCenter.new
    end
    
    def create
        @Giving_Center = GivingCenter.new(giving_center_params)
        
        if @Giving_Center.save 
            redirect_to root_path
        else
           render 'new'
        end
    end
    
    private
    
    def giving_center_params
        params.require(:giving_center).permit(:eventdate, :bpecode, :organization, :description, :category)
    end
    
    def find_giving_center
         @Giving_Center = GivingCenter.find(params[:id])
    end

end
