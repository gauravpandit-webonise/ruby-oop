class Csvclass
  def initialize

  end
  def read_write_csv(emp_obj)
    Csv.write_file(emp_obj.emp_name, emp_obj.emp_contact, emp_obj.emp_mail, emp_obj.emp_gender, emp_obj.emp_age, emp_obj.emp_dob, emp_obj.emp_dept)
  end
end