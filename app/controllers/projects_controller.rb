class ProjectsController < ApplicationController

before_action :find_project, only: [:show, :edit, :update, :destroy]

      def index
        @projects = Project.all
      end

      def show
      end

      def new
        @project = Project.new
      end

      def create
        @project = Project.create(project_params)
        # byebug
        if @project.valid?
          redirect_to project_path(@project)
        else
          flash[:errors] = @project.errors.full_messages
          redirect_to new_project_path
        end
      end

      def edit
      end

      def update
        @project.update(project_params)
        if @project.valid?
        redirect_to project_path(@project)
       else
        flash[:errors] = @project.errors.full_messages
        redirect_to new_project_path
       end
      end

      def destroy
        @project.destroy
        redirect_to projects_path
      end


      private

      def find_project
       @project = Project.find(params[:id])
      end

      def project_params
        params.require(:project).permit(:name)
      end

end
