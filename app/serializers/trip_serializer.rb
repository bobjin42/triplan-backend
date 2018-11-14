class TripSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :plans, :trip_title
  belongs_to :user
  has_many :locations 


  def plans
    object.plans
  end

end
