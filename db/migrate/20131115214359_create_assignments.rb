class CreateAssignments < ActiveRecord::Migration
  def up
    create_table 'assignments' do |t|
        t.string 'title'
    end
  end

  def down
    drop_table 'assignments' #deletes the whole table
  end
end
