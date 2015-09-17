require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  # def initialize(params = {})
  #   @file = params.delete(:file)
  #   super
  #   if @file
  #     # self.filename = sanitize_filename(@file.original_filename)
  #     # self.content_type = @file.content_type
  #     self.file = @file.read
  #   end
  # end
end