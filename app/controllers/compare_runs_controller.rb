class CompareRunsController < ApplicationController

  def index
    @projects=Project.select("id,name")
    @projects=@projects.to_json
  end


  respond_to :json, :html
  def getSubProjects
    project_id=params["project_id"]
    @sub_projects = SubProject.where(:project_id => project_id).select([:id, :name])
    respond_with(@sub_projects.to_json)
  end

  respond_to :json, :html
  def getTestTypes
    sub_project_id =params["subproject_id"]
    @test_types = TestMetadatum.where(:sub_project_id => sub_project_id).select([:test_category])
    respond_with(@test_types.to_json)
  end

end