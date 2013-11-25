class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end
    def create
        if params[:assignment].values.include?("") #check if there are empty fields
              flash[:warning] = "Please fill in all fields"
              redirect_to :back
            else
                @assignment = Assignment.create!(params[:assignment])
                redirect_to assignments_path
        end
    end
    def show
        id = params[:id]
        @assignment = Assignment.find(id)
        #render default view
    end
    def new
        #renders the default view
    end
    def edit #update the grade

    end
    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        redirect_to assignments_path
    end
end