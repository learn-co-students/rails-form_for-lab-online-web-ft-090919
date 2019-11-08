class StudentsController < ApplicationController

    before_action :set_student
    skip_before_action :set_student, only: [:index, :create, :new] #line not needed since these methods overwrite instance variable but it works anyway
    
    def index
        @students = Student.all
    end

    def create
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def edit
    end

    def show
    end

    def update
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path
    end

    private

    def set_student
        @student = Student.find(params[:id]) if params.include?(:id)
    end

end
