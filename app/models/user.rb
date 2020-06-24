class User < ApplicationRecord
  before_save :set_is_home
  def ieiru(longitude, latitude)
    if (longitude.to_f - 35.757).abs <= 0.002.abs && (latitude.to_f - 139.759).abs <= 0.002
      return true
    else
      return false
    end
  end

  def set_is_home
    self.is_home = ieiru(longitude, latitude)
  end

end