class Types::User < Types::BaseObject
  description <<~DESC
    The user type contains different fields with information about a
    specific user such as name and events the user signed up for.
  DESC

  field :id, ID, 'Unique identifier of the user', null: false
  field :name, String, 'Name of the user', null: false
  field :events, [Types::Event], 'Events the user signed up for', null: true

  def events
    object.events
  end
end
