class ChallengeResource < JSONAPI::Resource
  attributes :title, :description, :challengers, :ante, :winner, :ante_settled, :owner
  has_many :comments
end
