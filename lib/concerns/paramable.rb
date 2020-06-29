module Paramable
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-') #takes a string, makes it lowercase, replaces " " with "-"
    end
  end
end
