# models/user.rb
class User < Sequel::Model
  plugin :validation_helpers
  # plugin :timestamps, update_on_create: true

  # one_to_many :operations

  def validate
    super
    validates_presence :name
  end
end
