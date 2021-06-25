class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    # all
    Classification
  end

  def self.longest
    # Boat.longest.classifications
    # Classification.where(:id => BoatClassification.where(boat_id: Boat.all.order(length: :desc).limit(1).select(:id)).select(:classification_id)).select(:name)
    Boat.longest.classifications.select(:name)
  end

end
