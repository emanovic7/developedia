class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]


  def index
    @skills = Skill.all
  end

  def show

  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.valid?
      @skill.create(skill_params)
      redirect_to skill_path(@skill)
    else
      flash[:errors] = @skill.errors.full_messages
      redirect_to new_skill_path
    end
  end

  def edit

  end

  def update
    if @skill.update(skill_params)
      @skill.save
      redirect_to skill_path(@skill)
    else
      flash[:errors] = @skill.errors.full_messages
      redirect_to edit_skill_path(@skill)
    end
  end

  def destroy
    @skill = Skill.destroy
    redirect_to skills_path
  end



  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :email)
    end
end
