class Types::Query < Types::BaseObject
  field :events, [Types::Event], 'Get all events', null: true
  field :users, [Types::User], 'Get all users', null: true
  field :find_event, Types::Event, "Find an event from it's ID", null: true do
    argument :id, ID, required: true
  end

  def events
    ::Event.all
  end

  def users
    ::User.all
  end

  def find_event(id:)
    ::Event.find_by(id: id)
  end
end
