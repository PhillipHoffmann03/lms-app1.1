class CreateCalendars < ActiveRecord::Migration[7.1]
  def change
    create_table :calendars do |t|
      t.string :event_title
      t.text :event_description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
