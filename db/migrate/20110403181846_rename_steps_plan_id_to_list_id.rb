class RenameStepsPlanIdToListId < ActiveRecord::Migration
  def self.up
    rename_column :steps, :plan_id, :list_id
  end

  def self.down
    rename_column :steps, :list_id, :plan_id
  end
end
