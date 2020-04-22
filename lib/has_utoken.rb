require 'active_record'
module ActiveRecord
  module HasUtoken
    extend ActiveSupport::Concern

    class_methods do
      def has_token(options = {})
        require 'active_support/core_ext/securerandom'

        attribute = options[:token_attribute] || :token
        length = options[:length] || 6
        
        define_method("regenerate_#{attribute}") do
          token = self.class.generate_token(attribute, length)

          update_column(attribute, token)
          token
        end

        before_create do 
          self.send("#{attribute}=", self.class.generate_token(attribute, length)) unless self.send("#{attribute}?")
        end
      end

      def generate_token(attribute, length)
        random_token = nil
        loop do
          hex_length = (length.to_f/2.0).round
          random_token = SecureRandom.hex(hex_length)

          break unless self.where(attribute => random_token).exists?
        end
        random_token
      end
    end
  end
end

ActiveRecord::Base.include(ActiveRecord::HasUtoken)