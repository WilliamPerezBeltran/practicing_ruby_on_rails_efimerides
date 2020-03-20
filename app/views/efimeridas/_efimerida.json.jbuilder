# frozen_string_literal: true

json.extract! efimerida, :id, :text, :date, :category_id, :created_at, :updated_at
json.url efimerida_url(efimerida, format: :json)
