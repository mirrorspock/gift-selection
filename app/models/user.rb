class User < ApplicationRecord

  def to_param
    unique_code
  end

end
