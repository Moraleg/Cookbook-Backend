class Recipe < ApplicationRecord
    #should use validates to make sure that people are submitting a title, an image, directions and ingredients
    belongs_to :user, optional: true
end
