gem 'activerecord', '~> 2.3'

module Consolo
  module ActsAsVisitable
    module ClassMethods
      
      def visitable?
        false
      end
      
      def acts_as_visitable
        self.class_eval do
          has_one :scheduled_visit, :as => :chart
        end
        
        self.class_eval <<-RUBY
          def self.visitable?
            true
          end
        RUBY
      end
    end
  end
end

ActiveRecord::Base.send :extend, Consolo::ActsAsVisitable::ClassMethods
