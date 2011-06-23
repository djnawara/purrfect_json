require 'spec_helper'

describe PurrfectJson::IpoJsonConverter do
  class IpoConvertingObject
    extend PurrfectJson::IpoJsonConverter
  end

  before do
    @ipo = IpoConvertingObject.new
    @ipo.stub! :to_json => %{
      {"book": {"title": "foo title", "pages": 500, "author": "bob dole"}}
    }

    # Since we randomly choose a ipo, force the first ipo so the test is deterministic.
    PurrfectJson::IpoJsonConverter.stub! :rand => 0
  end

  it 'formats json as duckets' do
    @ipo.to_ipo.should == "\n                        {\"book\":{\n                        \"title\":\"\n               footitle\",\"pages\":500,\"auth\n             or\":\"bobdole\"}}"
  end

end
