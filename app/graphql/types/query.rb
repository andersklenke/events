class Types::Query < Types::BaseObject
  field :events, [Types::Event], 'Get all events', null: true
  field :users, [Types::User], null: true

  def events
    ::Event.all
  end
end
