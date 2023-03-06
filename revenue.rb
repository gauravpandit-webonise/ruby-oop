class Revenue
  @@total = 0
  def initialize()

  end
  def total_prod_rev(obj)
    @@total += obj.prod_cost
    puts @@total
  end
end
