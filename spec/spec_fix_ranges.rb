
require 'fix_ranges'

describe Range, "Range" do

   it "try (0..10).each as Normal" do
      test = Array.new
      (0..10).each do |x|
         test << x
      end
      test.should == [0,1,2,3,4,5,6,7,8,9,10]
   end


   it "try (0..10).reverse.each" do
      test = Array.new
      (0..10).reverse.each do |x|
         test << x
      end
      test.should == [10,9,8,7,6,5,4,3,2,1,0]

   end

   it "try (0..10).reverse_each" do
      test = Array.new
      (0..10).reverse_each do |x|
         test << x
      end
      test.should == [10,9,8,7,6,5,4,3,2,1,0]
   end

end
