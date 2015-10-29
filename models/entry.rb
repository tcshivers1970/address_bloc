 class Entry
   attr_accessor :name, :phone_number, :email
 
    def initialize(name, phone_number, email)
        @name = name
        @phone_number = phone_number
        @email = email
    end
# #7 The \n character is the where it prints the new line.
    def to_s
        "Name: #{@name}\nPhone Number: #{@phone_number}\nEmail: #{@email}"
    end
 end