#encoding: utf-8

require 'spec_helper'

describe ProjectsController do
  it "展现一个有关没有找到工程的错误信息" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "工程没有找到。"
    flash[:alert].should eql(message)
  end
end
