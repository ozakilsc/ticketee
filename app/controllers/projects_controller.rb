#encoding: utf-8

class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    HashWithIndifferentAccess
    @project = Project.new(params[:project])
    @project.save
    flash[:notice] = "工程创建成功！"
    redirect_to project_url @project
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
