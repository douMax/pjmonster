class ProjectsController < ApplicationController
  before_action :fetch_project, except:[:new,:create,:index]

  def fetch_project
    @project = Project.find(params[:id])
  end
  
  def index
    @projects = Project.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

end
