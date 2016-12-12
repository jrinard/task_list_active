class CreateList2 < ActiveRecord::Migration[5.0]
  def change
    add_column(:tasks, :list_id, :integer)
  end
end
