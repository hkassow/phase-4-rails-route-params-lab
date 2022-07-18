class StudentsController < ApplicationController

  def index
    if params.include?('name')
      name = params['name']
      first = Student.where(first_name: name)
      last = Student.where(last_name: name)
      render json: last
    else 
      students = Student.all
      render json: students
    end
  end
  def show
    student = Student.find(params[:id])
    render json: student
  end


end
