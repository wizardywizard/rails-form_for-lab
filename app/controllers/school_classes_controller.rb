class SchoolClassesController < ApplicationController

    def index
      @school_class = School_classes.all
    end

    def show
        @school_class = School_classes.find(params[:id])
    end

    def new
        @school_class = School_classes.new
    end

    def create
		@school_class = School_classes.new(post_params(:title, :room_number))
		@school_class.save
		redirect_to school_classes_path(@school_class)
    end
    
    def update
		@school_class = School_classes.find(params[:id])
		@school_class.update(post_params(:title))
		redirect_to school_classes_path(@school_class)
    end
    
    def edit
        @school_class = School_classes.find(params[:id])
      end
end