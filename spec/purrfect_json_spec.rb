require 'spec_helper'

describe PurrfectJson do
  class JsonConvertingObject
    include PurrfectJson
  end

  it 'defines conversion method merely from including module' do
    converter = JsonConvertingObject.new
    converter.should respond_to(:to_cats)
    converter.should respond_to(:to_ipo)
  end
end
