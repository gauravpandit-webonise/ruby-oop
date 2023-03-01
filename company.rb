$LOAD_PATH << '.'
require 'employee'
require 'hr'
require 'department'
require 'engg'
require 'module'
require 'writecsv'
class Company
include Csv
  def initialize
    emp1 = Employee.new("Gaurav", "1234567890", "gaurav@webonise", "male", "24", "1998", "engg")
    emp2 = Employee.new("Mayur", "987654321", "mayur@webonise", "male", "26", "1996", "engg")
    emp3 = Employee.new("Abhijeet", "1212121212", "abhijeet@webonise", "male", "30", "1992", "HR")
   

    emp_arr = [emp1, emp2, emp3]

    hr = Hr.new()
    eng = Engg.new()
    #emp.print_employee
    #hr.print_hr_emp(emp_arr)
    hr.hr_count(emp_arr)
    eng.engg_count(emp_arr)
    

    csvobj = Csvclass.new()
    # csvobj.read_write_csv(emp5)

    for i in emp_arr
      csvobj.read_write_csv(i)
    end
  end

  # def write_csv()
  #   # Csv.write_file(emp_name, emp_contact, emp_mail, emp_gender, emp_age, emp_dob, emp_dept)
  #   Csv.write_file("gaurav", "emp_contact", "emp_mail", "emp_gender", "emp_age", "emp_dob", "emp_dept")
  # end
  
end




com = Company.new()
# com.write_csv()
