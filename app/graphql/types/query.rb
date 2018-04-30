class Types::Query < Types::BaseObject
  field :events, [Types::Event], 'Get all events', null: true
  field :users, [Types::User], 'Get all users', null: true

  def events
    ::Event.all
  end

  def users
    ::User.all
  end
end
