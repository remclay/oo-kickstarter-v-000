class Project

  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    project = self
    backer.backed_projects.include?(project) || backer.back_project(project)
  end

end
