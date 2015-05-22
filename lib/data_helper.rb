require 'csv'

module DataHelper
  class << self
    def user_data data_file
      content = CSV.read Dir.pwd + data_file
      descriptor = content.shift
      descriptor = descriptor.map { |key| key.to_sym }
      content.map{ |data| Hash[descriptor.zip(data)]}
    end
  end
end