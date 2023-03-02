$LOAD_PATH << '.'
require 'department'
class Engg < Department
  @@engg_emp_count = 0
  def initialize()
  end

  def print_engg_emp(emp_arr)
    for i in emp_arr
      if i.emp_dept == 'engg'
        puts i.print_employee
      end
    end
  end

  def engg_count(emp_arr)
    for i in emp_arr
      if i.emp_dept == "engg"
        @@engg_emp_count += 1
      end
    end
    puts "number of employees in engineering department : #{@@engg_emp_count}" 
  end
end
