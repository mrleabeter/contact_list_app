## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase

  def self.add_to_database(contact_array)
    CSV.open("contacts.csv", "a") do |csv|
        csv << contact_array
      end
  end

  def self.total_contacts
    CSV.open("contacts.csv", "r") do |csv|
      csv.readlines.size
    end
  end
  def self.all_contacts
    CSV.foreach('contacts.csv') do |row|
        puts "#{row[0]}: #{row[1]} #{row[2]}  (#{row[3]})"
    end
    CSV.open("contacts.csv", "r") do |csv|
      puts "---"
      puts "#{csv.readlines.size} records total"
    end
  end

end