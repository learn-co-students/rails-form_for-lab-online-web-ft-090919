class SchoolClassesController < ActionController::Base
  def index 
    @classes = SchoolClass.all 
  end 
  
  def new
    @class = SchoolClass.new 
  end 
  
  def create 
    @class = SchoolClass.create(class_params(:title,:room_number))
    redirect_to @class
  end 
  
  def show 
    set_class 
  end 
  
  def edit 
    set_class
  end 
  
  def update
    set_class
    @class.update(class_params(:title,:room_number))
    redirect_to @class
  end 
  
  private 
  
  def set_class
    @class = SchoolClass.find_by_id(params[:id])
  end 
  
  def class_params(*args)
    params.require(:school_class).permit(*args)
  end
end 