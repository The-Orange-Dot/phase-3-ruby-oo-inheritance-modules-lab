module Memorable

module ClassMethod
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end

module InstanceMethod
  def initialize
    self.class.all << self
  end
end

end