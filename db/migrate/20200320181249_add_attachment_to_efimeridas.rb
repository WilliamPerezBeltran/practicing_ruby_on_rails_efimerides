class AddAttachmentToEfimeridas < ActiveRecord::Migration[5.2]
  def change
    add_column :efimeridas, :attachment, :string
  end
end
