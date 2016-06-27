class MatchWord
  include Mongoid::Document
  include Mongoid::Timestamps

  field :words, :type => Array

  validates :words, presence: true

end