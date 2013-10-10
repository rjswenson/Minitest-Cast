require "minitest_helper"

class ProductTest < Minitest::Unit::TestCase

  describe Product do
    it "includes name in to_param" do
      product = Product.create!(name: "Hello World")
      product.to_param.must_equal "#{product.id}-hello-world"
    end
  end
end

