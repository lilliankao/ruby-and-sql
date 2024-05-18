# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

#puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.
salesperson = Salesperson.new
#p salesperson
salesperson["first_name"] = "Ben"
salesperson["last_name"] = "Block"
salesperson["email"] = "block@hey.com"
salesperson.save

salesperson = Salesperson.new
salesperson["first_name"] = "Brian"
salesperson["last_name"] = "Eng"
salesperson["email"] = "eng@hey.com"
salesperson.save

salesperson = Salesperson.new
salesperson["first_name"] = "Lily"
salesperson["last_name"] = "Kao"
salesperson["email"] = "kao@hey.com"
salesperson.save

# 3. write code to display how many salespeople rows are in the database
puts "Salespeople: #{Salesperson.all.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
me = Salesperson.find_by({"first_name" => "Ben","last_name" => "Block"})
#p me
me["email"] = "benjamin.block@kellogg.northwestern.edu"
me.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2

salespeople = Salesperson.all
for person in salespeople
    #p person
    first_name = person["first_name"]
    last_name = person["last_name"]

    #first_name = me["first_name"]
    #last_name = me["last_name"]
    puts "#{first_name} #{last_name}"
    # Ben Block
    # Brian Eng
end
