class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if @student.active == true
      @student.update(active: false)
    elsif @student.active == false
      @student.update(active: true)
      redirect_to show
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end