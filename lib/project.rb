class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(object)
    @backers << object
    object.back_project(self) unless object.back_project.includes?(self)
  end
end
