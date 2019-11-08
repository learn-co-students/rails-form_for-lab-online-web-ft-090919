class SchoolClassesController < ApplicationController

    before_action :set_school_class
    skip_before_action :set_school_class, only: [:index, :create, :new] #redundant since these actions will overwrite instance variable but whatever

    def index
        @school_classes = SchoolClass.all 
    end

    def create
        @school_class = SchoolClass.create(school_class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new 
    end

    def edit
    end

    def show
    end

    def update
        @school_class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path
    end

    private

    def set_school_class
        @school_class = SchoolClass.find(params[:id]) if params.include?(:id)
    end

end