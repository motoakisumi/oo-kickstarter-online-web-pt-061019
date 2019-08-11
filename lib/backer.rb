class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(object)
    @backed_projects << object
    object.add_backer(self) unless object.backers.include?(self)
  end

end
