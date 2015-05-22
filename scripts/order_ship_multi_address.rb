require_relative '../config/env.rb'
require_relative '../pages/page_helper'
require_relative '../pages/top_nav'
require_relative '../pages/side_nav'
require_relative '../pages/category'


PageHelper.goto '/welcome.htm'
TopNav.select_closet_category
SideNav.select_hangers
Category.select_sub_category(:wood)


