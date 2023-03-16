class Company
  attr_accessor :comp_name, :division
  @@count = 0
  def initialize(comp_name, division)
    @comp_name = comp_name
    @division = division
    @@count += 1
  end

  def print_company_details
    puts comp_name
    puts division
    puts @@count
  end

  def read_file
    file_object = File.new("hello world", "r")
    puts file_object.read
    File.close
  end
end

class Product < Company
  attr_accessor :prod_name, :prod_id
  def initialize(prod_name, prod_id)
    @prod_name = prod_name
    @prod_id = prod_id
  end
  
  def print_product_details
  end
end

class Service < Company
  attr_accessor :service_name, :service_id
  def initialize(service_name, service_id)
    @service_name = service_name
    @service_id = service_id
  end
  
  def print_service_details

  end
end

class Employee < Company
  attr_accessor :emp_name, :emp_id, :emp_gender, :emp_mail, :emp_contact, :emp_desg, :emp_dept
  def initialize(emp_name, emp_id, emp_gender, emp_mail, emp_contact, emp_desg, emp_dept)
    @emp_name = emp_name
    @emp_id = emp_id
    @emp_gender = emp_gender
    @emp_mail = emp_mail
    @emp_contact = emp_contact
    @emp_desg = emp_desg
    @emp_dept = emp_dept

    fileobject = File.new("hello world", "a+")
    fileobject.syswrite("employee name : " + emp_name + "\n")
    fileobject.syswrite("employee id : " + emp_id + "\n")
    fileobject.syswrite("employee gender : " + emp_gender + "\n")
    fileobject.syswrite("employee mail : " + emp_mail + "\n")
    fileobject.syswrite("employee contact : " + emp_contact + "\n")
    fileobject.syswrite("employee designation : " + emp_desg + "\n")
    fileobject.syswrite("employee department : " + emp_dept + "\n")
    fileobject.syswrite("\n\n")
  end
  
  def print_employee_details
    puts emp_name
    puts emp_id
    puts emp_gender
    puts emp_mail
    puts emp_contact
    puts emp_desg
    puts emp_dept
  end    
end

class Department < Company
  def initialize(dept_name, dept_id)
    @dept_name = dept_name
    @dept_id = dept_id
    @@count += 1
  end
  attr_accessor :dept_name, :dept_id

  def print_department_details
    puts dept_name
    puts dept_id
    puts @@count
  end
end

class Hr < Department
  def initialize(hr_desg, hr_hod)
    @hr_desg = hr_desg
    @hr_hod = hr_hod

  end
end

class Engineer < Department
  def initialize(engg_desg, engg_hod)
    @engg_desg = engg_desg
    @engg_hod = engg_hod

  end
end

class Qa < Department
  def initialize(qa_desg, qa_hod)
    @qa_desg = qa_desg
    @qa_hod = qa_hod

  end
end

class Sales < Department
  def initialize(sales_desg, sales_hod)
    @sales_desg = sales_desg
    @sales_hod = sales_hod

  end
end

emp = Employee.new("gaurav", "web100", "Male", "gaurav@webonise", "1234567890", "intern", "ROR")
emp1 = Employee.new("mayur", "web500", "Male", "mayur@webonise", "1234567890", "intern", "ROR")
com = Company.new("webonise", 100)
com.read_file
