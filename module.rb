
require 'csv'

module Csv
  def self.write_file(emp_name, emp_contact, emp_mail, emp_gender, emp_age, emp_dob, emp_dept)
    CSV.open('employeedetails.csv', 'a') do |i|
      i << [emp_name, emp_contact, emp_mail, emp_gender, emp_age, emp_dob, emp_dept]
    end
  end

  def self.read_file
    puts CSV.read('employeedetails.csv')
  end
end
