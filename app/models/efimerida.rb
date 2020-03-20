# frozen_string_literal: true

class Efimerida < ApplicationRecord
  belongs_to :category
  delegate :name, to: :category, prefix: true
  # delegate :attributo de la variaable, to: :el model al que pertenece, prefix: true
end
