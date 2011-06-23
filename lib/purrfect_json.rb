module PurrfectJson
  VERSION = '0.1.0'.freeze

  def self.included(base)
    base.extend CatJsonConverter
    base.extend IpoJsonConverter
  end
end

require File.join(File.dirname(__FILE__), 'purrfect_json/ascii_mask_converter')
require File.join(File.dirname(__FILE__), 'purrfect_json/cat_json_converter')
require File.join(File.dirname(__FILE__), 'purrfect_json/ipo_json_converter')
require File.join(File.dirname(__FILE__), 'purrfect_json/rails_glue') if defined?(ActiveRecord::Base) && defined?(Mime::Type)
