class TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Task.all
  end

  def create
    @task = Task.new task_params

    if @task .save
      respond_with @task
    else
      head :unprocessable_entity
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :project_id)
  end
end
