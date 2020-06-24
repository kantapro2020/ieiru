class User < ApplicationRecord
  def ieiru(longitude, latitude)
    if (user.longitude - 35.757).abs <= 0.002.abs && (user.latitude - 139.759).abs <= 0.002
      return true
    else
      return false
    end
  end
end