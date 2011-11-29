#encoding: utf-8

class ProjectsController < ApplicationController
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
    @project = Project.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
