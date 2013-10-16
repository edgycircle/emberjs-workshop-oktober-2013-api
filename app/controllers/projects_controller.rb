class ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with Project.all
  end

  def show
    respond_with Project.find params[:id]
  end

  def create
    @project = Project.new project_params

    if @project.save
      respond_with @project
    else
      head :unprocessable_entity
    end
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
