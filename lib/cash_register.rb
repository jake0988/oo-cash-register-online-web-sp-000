require 'pry'
class CashRegister
attr_accessor :discount, :total, :price, :items

  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
  #   if @price
  #   @total = @total + @price
  # end
  @total
  end

  def add_item(title, price, quantity= 1, add= nil)
    @count = []
    @count << self
    @count = @count.count
    array = []
    quantity.times do
    @items << title
    end
    #binding.pry
    previous_total = @total.to_f
    hash = { title => price }
    @price = price
    @last_transaction = hash
    @total = previous_total + (price * quantity)
    if add
      @total = @total + add
    end
    @total
  end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  end

  @total = @total - (@total * 1 / 100 * @discount)
  @total = @total.to_i
  "After the discount, the total comes to $#{@total}."
end

  def items
   @items
  end
  price = @last_transaction
  def void_last_transaction
    @total = @total - @price
    if @count < 2
      @total == 0
    end
  end
end
