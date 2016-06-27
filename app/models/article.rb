class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :article, type: String

  validates :article, presence: true

end