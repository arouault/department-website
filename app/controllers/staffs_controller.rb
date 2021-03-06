class StaffsController < ApplicationController

  add_breadcrumb "Home", :root_path


  def index
    @staff = Staff.all.joins(:group).
      select('groups.*, staffs.*').
      sort_by{ |s| s.position.to_i }.
      sort_by{ |s| s.group.position.to_i }.
      group_by(&:title)
  end

  def show
    add_breadcrumb "About", :about_path
    @staff = Staff.find(params[:id])
  end

end
