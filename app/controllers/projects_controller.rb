class ProjectsController < ApplicationController
  unloadable
 
  before_filter :forward_to_wiki, :only => :show

  def forward_to_wiki
    redirect_to project_wiki_start_page_path params[:id]
    return false
  end
end
