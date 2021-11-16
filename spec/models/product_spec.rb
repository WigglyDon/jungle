require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    



    before do
      @category = Book.new(:title => "RSpec Intro", :price => 20)
      @order = Order.new(@customer, @book)

      @order.submit
    end

   describe "customer" do
     it "puts the ordered book in customer's order history" do
       expect(@customer.orders).to include(@order)
       expect(@customer.ordered_books).to include(@book)
     end
   end

   describe "order" do
     it "is marked as complete" do
       expect(@order).to be_complete
     end

     it "is not yet shipped" do
       expect(@order).not_to be_shipped
     end
   end






  end
end
