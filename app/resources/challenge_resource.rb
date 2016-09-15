class ChallengeResource < JSONAPI::Resource
  attributes :title, :description, :challenger, :ante, :winner, :ante_settled, :owner
  has_many :comments

  filters :challenger, :owner
end
