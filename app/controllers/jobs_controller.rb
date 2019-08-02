class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :udpate, :destroy]

  def index

  end

  def new
    @developers = Developer.all
    @job = Job.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(job_params[:project_id])
    @job = @project.jobs.create(project_id: @project.id, developer_id: job_params["developer_id"] )

    redirect_to project_path(@project)
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:project_id, :developer_id)
    end

end
