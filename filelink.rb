module FileUtility

  def file_link.write(name, desg, dept)
    file_name = "employeedetails.csv"
    CSV.open(file_name, "a") do |file|
      file << [name. desg, dept]
    end
  end

  def file 
    @@file_name = "employeedetails.csv"
    file = csv.parse(File.open(@@file_name, 'r'))
    file
  end
end
