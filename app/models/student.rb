class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    if self.active == true
      self.update(active: false)
    elsif self.active == false
      self.update(active: true)
    end
  end
end