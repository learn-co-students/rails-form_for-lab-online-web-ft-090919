class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:id])
  end
  
end
