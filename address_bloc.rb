require_relative 'controllers/menu_controller'

 # #4
 menu = MenuController.new
 # #5
 system "clear"
 puts "Welcome to AddressBloc!"
 # #6
 menu.main_menu
 
 def import_from_csv(file_name)
# Implementation goes here
   csv_text = File.read(file_name)
   csv = csv.parse(csv_text, headers: true, skip_blanks: true)
   csv.each do |row|
    row_hash = row.to_hash
    add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
   end
 end