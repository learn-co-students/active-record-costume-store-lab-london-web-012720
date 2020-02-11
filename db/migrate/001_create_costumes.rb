# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec 

class CreateCostumes < ActiveRecord::Migration[4.2]

    def change 
        create_table :costumes do |t|
            t.string :name
            t.integer :price 
            t.string :size 
            t.string :image_url
            t.timestamp :created_at 
            t.timestamp :updated_at
        end
    end


end

# columns:
# 1. name
#   2. price
#   3. size
#   4. image url
  
# _as well as_ the two "timestamp" columns:  `created_at` and `updated_at`. This
# will provide a grand total of _six_ columns.