class CashRegister 
  
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def discount 
    @discount 
  end
  
  def total 
    @total 
  end
  
  def items
    @items
  end
  
  def total=(total)
    @total = total
  end
  
  def add_item(title, price, quantity = 1)
    
    @old_total = @total
    @old_items = [...@items]
    quantity.times do @items << title end
    self.total += price * quantity
  end
  
  def apply_discount
    if self.discount > 0
      self.total -= self.total * self.discount / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items=(items)
    @items = items
  end
  
  def void_last_transaction
    self.total = @old_total
    self.items = @old_items
    
  end
  
end 





































# class CashRegister 
  
# attr_accessor :items, :discount, :total, :last_transaction

#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end

#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end

#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end

#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
# end

  

