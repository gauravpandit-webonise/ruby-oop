$LOAD_PATH << '.'
require 'department'
class Hr < Department
  @@hr_emp_count = 0
  def initialize()
  end

  def print_hr_emp(emp_arr)
    emp_arr.each do |i|
      if i.emp_dept == 'HR'
        puts i.print_employee
      end
    end
  end

  def hr_count(emp_arr)
    emp_arr.each do |i|
      if i.emp_dept == 'HR'
        @@hr_emp_count += 1
      end
    end
    puts "number of employees in HR department : #{@@hr_emp_count}" 
  end
end
