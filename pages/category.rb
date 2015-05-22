require_relative 'page_helper'

class Category

  WOOD_HANGERS_LINK = { css: 'a[href="/shop/closet/hangers/wood"]' }

  class << self
    def select_sub_category sub_category
      case sub_category
        when :wood
          PageHelper.click WOOD_HANGERS_LINK
      end
    end
  end
end