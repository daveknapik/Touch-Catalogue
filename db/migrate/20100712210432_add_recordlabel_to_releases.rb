class AddRecordlabelToReleases < ActiveRecord::Migration
  def self.up
    add_column :releases, :record_label, :string
  end

  def self.down
    remove_column :releases, :record_label
  end
end
