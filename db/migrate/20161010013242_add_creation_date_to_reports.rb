class AddCreationDateToReports < ActiveRecord::Migration
  def change
    add_column :reports, :creation_date, :date
  end
end
