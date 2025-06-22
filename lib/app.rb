# frozen_string_literal: true

require 'avatar_generator'

# main module
module App
  def self.generate_avatar(username_or_email)
    ag = AvatarGenerator.new(username_or_email)
    ag.generate
  end
end
