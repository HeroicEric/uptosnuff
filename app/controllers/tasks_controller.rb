class TasksController < ApplicationController

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      respond_with @task
    else
      render :new
    end
  end

end
