class TeamsController < ApplicationController

  before_action :find_project, only: [:show, :edit, :update, :destroy]

        def index
          @teams = Team.all
        end

        def show
        end

        def new
          @projects = Project.all
          @developers = Developer.all
          @team = Team.new
        end

        def create
          @projects = Project.all
          @team = Team.create(team_params)
          if @team.valid?
            redirect_to projects_path
          else
            flash[:errors] = @team.errors.full_messages
            redirect_to new_team_path
          end
        end

        def edit
        end

        def update
          @projects = Project.all
          @team.update(team_params)
          if @team.valid?
          redirect_to projects_path
         else
          flash[:errors] = @team.errors.full_messages
          redirect_to new_team_path
         end
        end

        def destroy
          @team.destroy
          redirect_to teams_path
        end


        private

        def find_project
         @team = Team.find(params[:id])
        end

        def team_params
          params.require(:team).permit(:project_id, :developer_id)
        end
end
