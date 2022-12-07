class Videoroom < ApplicationRecord
  belongs_to :appointment
  before_create :generate_room_token
  # before_create do
  #   opentok = OpenTok::OpenTok.new(ENV["VONAGE_KEY"], ENV["VONAGE_SECRET_KEY"])
  #   session = opentok.create_session
  #   self.vonage_session_id = session.session_id
  # end

  def generate_room_token
    OpentokTokenGenerator.call(self)
  end
end
