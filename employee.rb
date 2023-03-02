class Employee
  
  @@id_count = 0
  @@emp_count = 0
  attr_accessor :emp_id, :emp_name, :emp_contact, :emp_mail, :emp_gender, :emp_age, :emp_dob, :emp_dept
  
  def initialize(emp_name, emp_contact, emp_mail, emp_gender, emp_age, emp_dob, emp_dept)
    @emp_id = @@id_count
    @emp_name = emp_name
    @emp_contact = emp_contact
    @emp_mail = emp_mail
    @emp_gender = emp_gender
    @emp_age = emp_age
    @emp_dob = emp_dob
    @emp_dept = emp_dept
    @@id_count += 1
    @@emp_count += 1
  end

  def print_employee
    puts "ID : #{@emp_id}"
    puts "name : " + @emp_name
    puts "contact : " + @emp_contact
    puts "email : " + @emp_mail
    puts "gender : " + @emp_gender
    puts "age : " + @emp_age
    puts "DOB : " + @emp_dob
    puts "department : " + @emp_dept
  end

  def emp_count
    puts "total number of employees : #{@@emp_count}"
  end
end
