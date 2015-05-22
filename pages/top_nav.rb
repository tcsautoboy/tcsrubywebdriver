require_relative 'page_helper'

class TopNav

  CLOSET_LINK = { css: '.menu-items a[href*="/shop/closet"]' }

  class << self
    def select_closet_category
      PageHelper.click_if_displayed CLOSET_LINK
    end
  end
end