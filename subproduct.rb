class SubProduct
  attr_accessor :prod_name, :prod_id, :prod_cost
  def initialize(prod_name, prod_id, prod_cost)
    @prod_name = prod_name
    @prod_id = prod_id
    @prod_cost = prod_cost
  end
end
