require "administrate/fields/base"

class FileField < Administrate::Field::Base
  def to_s
    data
  end
end
