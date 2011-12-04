#encoding: utf-8

class TicketsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :index, :show ]
  before_filter :find_project
  before_filter :find_ticket, :only => [:show, :edit, :update, :destroy]

  def new
    @ticket = @project.tickets.build
  end

  def create
    @ticket = @project.tickets.build(params[:ticket].merge!(:user => current_user))
    if @ticket.save
      flash[:notice] = "票样已成功创建。"
      redirect_to [@project, @ticket]
      # redirect_to project_ticket_path(@project, @ticket)
    else
      flash[:alert] = "票样创建失败。"
      render :action => :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "票样已更新成功。"
      redirect_to [@project, @ticket]
    else
      flash[:alert] = "票样更新失败。"
      render :action => :edit
    end
  end

  def destroy
    @ticket.destroy
    flash[:notice] = "票样已成功删除。"
    redirect_to @project
  end

  private
    def find_project
      @project = Project.find(params[:project_id])
    end

    def find_ticket
      @ticket = @project.tickets.find(params[:id])
    end
end