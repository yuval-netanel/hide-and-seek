class Game < ActiveRecord::Base

  has_many :points, :order => 'order'

end
