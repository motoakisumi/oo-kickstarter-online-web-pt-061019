class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(object)
    @backers << object
    object.back_project(self) unless object.backed_projects.include?(self)
  end
end
