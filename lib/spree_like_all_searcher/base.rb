require 'spree_core'
require "spree/core/search/base"
module SpreeLikeAllSearcher
    class Base < defined?(Spree::Core::Search::MultiDomain) ? Spree::Core::Search::MultiDomain :  Spree::Core::Search::Base
    attr_accessor :properties

      # method should return new scope based on base_scope
      def get_products_conditions_for(base_scope, query)
          if query
            base_scope.like_all([:name, :description, :sku], query.split)
          end
      end

  end
end
