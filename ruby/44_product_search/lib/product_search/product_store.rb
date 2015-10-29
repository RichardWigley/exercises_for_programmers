require 'json'
require_relative 'product_list'
require 'byebug'

class ProductStore
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def read(stream: input_stream)
    product_list = ProductList.new
    json_symbolizing_of_stream(stream)[:products].each do |product_stream|
      product_list.add(product: Product.new(product_stream))
    end
    product_list
  end

  def write(persistable)
    File.open(filename, 'w') do |f|
      f.write(persistable.to_json)
    end
  end

  private

  def json_symbolizing_of_stream(stream)
    deep_symbolize(JSON.parse(stream))
  end

  def input_stream
    IO.read(filename)
  end

  def output_stream
  end

  def deep_symbolize(obj)
    return obj.inject({}) { |memo, (k, v)| memo[k.to_sym] = deep_symbolize(v); memo } if obj.is_a? Hash
    return obj.inject([]) { |memo, v| memo << deep_symbolize(v); memo } if obj.is_a? Array
    obj
  end
end
