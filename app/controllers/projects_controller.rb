class ProjectsController < ApplicationController
  before_action :authorized, only: [:index, :create, :destroy]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

      def index
        @projects = @current_user.projects.all
      end

      def show
      end

      def new
        @project = Project.new
        @developers = Developer.all
      end

      def create
        if @current_user
          @project = @current_user.projects.create(project_params)

          if @project.valid?
            redirect_to project_path(@project)
          else
            flash[:errors] = @project.errors.full_messages
            redirect_to new_project_path
          end
        else
          flash["message"] = "Please create account first"
          redirect_to new_login_path
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

      def remove_developer
        @project = Project.find(params[:project_id])
        @developer = Developer.find(params[:developer_id])
        @project.developers.delete(@developer)

        redirect_to project_path(@project)
      end


      private

      def find_project
       @project = Project.find(params[:id])
      end

      def project_params
        params.require(:project).permit(:name, :user_id)
      end

end
