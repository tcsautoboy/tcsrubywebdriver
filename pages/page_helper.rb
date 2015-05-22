require_relative '../config/env'


module PageHelper

  MODAL = { css: '#monetate_lightbox_content [href="#close"]' }

  class << self
    def goto url_path
      $driver.get ENV['base_url'] + url_path
      click_if_displayed MODAL
      $driver.navigate.refresh
    end

    def find locator
      $driver.find_element locator
    end

    def type(locator, text)
      find(locator).send_keys(text)
    end

    def click locator
      find(locator).click
    end

    def select(locator, option)
      list = Selenium::WebDriver::Support::Select.new find locator
      list.select_by(:text, option)
    end

    def click_if_displayed locator
      find(locator).click if is_displayed? locator
    end

    def is_displayed? locator
      rescue_exception { Selenium::WebDriver::Wait.new(timeout: 10).until { find(locator).displayed? } }
    end

    def rescue_exception
      yield
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end
end