 require_relative '../models/entry'
# #1 Entry program
 RSpec.describe Entry do
# #2 Context that gives structure  
   describe "attributes" do
# #3 the "it" statement
     it "should respond to name" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
# #4 The expect method to declare the expectations        
       expect(entry).to respond_to(:name)
     end

     it "should respond to phone_number" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:phone_number)
     end

     it "should respond to email" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       entry = Entry.new
       expect(entry).to respond_to(:email)
     end
   end
# #5 The to_s statement used to separate the new context from the initilaizer
   describe "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
# #6 The expect statement is used to check the to_s returns a single string equal to the epxeted string.
       expect(entry.to_s).to eq(expected_string)
     end
   end   
 end