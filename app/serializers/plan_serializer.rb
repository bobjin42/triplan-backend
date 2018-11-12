class PlanSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :note, :location

  belongs_to :location

  def location_name
    object.location
  end
end
