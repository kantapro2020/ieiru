class User < ApplicationRecord
  before_save :set_is_home
  def ieiru(longitude, latitude)
    if (longitude - 35.757).abs <= 0.002.abs && (latitude - 139.759).abs <= 0.002
      return true
    else
      return false
    end
  end

  def set_is_home
    self.is_home = ieiru(longitude, latitude)
  end

end