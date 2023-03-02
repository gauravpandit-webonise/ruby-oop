$LOAD_PATH << '.'
require 'employee'
require 'hr'
require 'department'
require 'engg'
require 'module'
require 'writecsv'
require 'product'
require 'subproduct'
require 'revenue'
class Company
include Csv
  def initialize
    emp1 = Employee.new("Gaurav", "1234567890", "gaurav@webonise", "male", "24", "1998", "engg")
    emp2 = Employee.new("Mayur", "987654321", "mayur@webonise", "male", "26", "1996", "engg")
    emp3 = Employee.new("Abhijeet", "1212121212", "abhijeet@webonise", "male", "30", "1992", "HR")
   

    emp_arr = [emp1, emp2, emp3]

    hr = Hr.new()
    eng = Engg.new()
    emp1.print_employee
    hr.print_hr_emp(emp_arr)
    hr.hr_count(emp_arr)
    eng.engg_count(emp_arr)
    
    csvobj = Csvclass.new()

    for i in emp_arr
      csvobj.read_write_csv(i)
    end


    rev = Revenue.new()
    subpro1 = SubProduct.new("mango", "mag100", 1000)
    subpro2 = SubProduct.new("mango", "mag100", 2000)
    subpro3 = SubProduct.new("mango", "mag100", 3000)
    subpro4 = SubProduct.new("mango", "mag100", 2500)

    prod_arr = [subpro1, subpro2, subpro3, subpro4]

    for i in prod_arr
      rev.total_prod_rev(i)
    end

  end
  
end

com = Company.new()

