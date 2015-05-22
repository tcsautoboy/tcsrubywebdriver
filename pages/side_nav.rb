require_relative 'page_helper'

class SideNav

  HANGERS_LINK = {css: '.filter-options.three-col-options > li:nth-child(2)'}

  class << self
    def select_hangers
      PageHelper.click HANGERS_LINK
    end
  end
end