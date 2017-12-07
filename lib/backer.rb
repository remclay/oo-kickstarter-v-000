class Backer

  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  #  project.backers.include?(project)|| project.add_backer(backer)
  end

end
