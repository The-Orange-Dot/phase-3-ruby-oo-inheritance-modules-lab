module Findable

module ClassMethod

  # USE "self.all" from classes to access all class variables from this module
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

end
end
