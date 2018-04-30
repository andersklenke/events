class Types::Event < Types::BaseObject
  description <<~DESC
    The event type contains different fields with information about a
    specific event such as name and participants.
  DESC

  field :id, ID, 'Unique identifier of the event', null: false
  field :name, String, 'Name of the event', null: false
  field :participants, [Types::User], 'Participants who signed up for the event', null: true

  def participants
    object.users
  end
end
