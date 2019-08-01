class SkillsetsController < ApplicationController
  before_action :find_skillset, only: [:show, :edit, :update, :destroy]

        def index
          @skillsets = Skillset.all
        end

        def new
          @skills = Skill.all
          @skillset = Skillset.new
          @developer = Developer.find(params[:developer_id])
        end

        def create
          #byebug
          @developer = Developer.find(skillset_params[:developer_id])
          @skillset = @developer.skillsets.create(developer_id: @developer.id, skill_id: skillset_params["skill_id"] )

          redirect_to developer_path(@developer)
        end

        def edit
        end

        def update
          @skillset.update(skillset_params)
          if @skillset.valid?
          redirect_to skillset_path
         else
          flash[:errors] = @skillset.errors.full_messages
          redirect_to edit_skillset_path
         end
        end

        def destroy
          @skillset.destroy
          redirect_to skillsets_path
        end


        private

        def find_project
         @skillset = Skillset.find(params[:id])
        end

        def skillset_params
          params.require(:skillset).permit(:developer_id, :skill_id)
        end
end
