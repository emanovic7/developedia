class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]


  def index
    @developers = Developer.all
  end

  def show

  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new
    if @developer.valid?
      @developer = Developer.create(developer_params)
      flash[:errors] = @developer.errors.full_messages
      redirect_to developer_path(@developer)
    else
      redirect_to new_developer_path
    end
  end

  def edit

  end

  def update
    if @developer.update(developer_params)
      redirect_to developer_path(@developer)
    else
      flash[:errors] = @developer.errors.full_messages
      redirect_to edit_developer_path(@developer)
    end
  end

  def destroy
    @developer.destroy
    redirect_to developers_path
  end


  private

    def set_developer
      @developer = Developer.find(params[:id])
    end

    def developer_params
      params.require(:developer).permit(:name, :img_url, :location)
    end
end
