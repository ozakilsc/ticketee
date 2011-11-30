#encoding: utf-8

class ProjectsController < ApplicationController

  before_filter :find_project, :only => [:show,
                                         :edit,
                                         :update,
                                         :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "工程创建成功！"
      redirect_to @project
    else
      flash[:alert] = "工程创建失败。"
      render :action => :new
    end
  end

  def show
    # @project = Project.find(params[:id])
  end

  def edit
    # @project = Project.find(params[:id])
  end

  def update
    # @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "工程已成功修改。"
      redirect_to @project
    else
      flash[:notice] = "工程修改失败。"
      render :action => :edit
    end
  end

  def destroy
    # @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "工程已成功删除。"
    redirect_to projects_path
  end

  private
    def find_project
      begin
        @project = Project.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = "工程没有找到。"
        redirect_to projects_path
      end
    end
end
