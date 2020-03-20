# frozen_string_literal: true

class Efimerida < ApplicationRecord
	attr_accessor :remote_content_url
	belongs_to :category
	delegate :name, to: :category, prefix: true
	# delegate :attributo de la variaable, to: :el model al que pertenece, prefix: true
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	# validates :name, presence: true # Make sure the owner's name is present.
end
