require "capybara/poltergeist"
require "capybara/dsl"
require "nokogiri"

class PoltergeistDriver
  include Capybara::DSL
  USER_AGENTS = [
    "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X x.y; rv:42.0) Gecko/20100101 Firefox/42.0",
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36",
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36 OPR/38.0.2220.41",
    "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1",
    "Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0)",
  ].freeze

  def initialize
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(
        app,
        js_errors: false,
        inspector: false,
        timeout: 1000,
        phantomjs_logger: open("/dev/null"),
        phantomjs_options: [
          "--load-images=no",
        ],
      )
    end
    Capybara.run_server = false
    Capybara.default_driver = :poltergeist
    page.driver.headers = {
      "DNT": 1,
      "User-Agent": USER_AGENTS.sample,
    }
    Capybara.ignore_hidden_elements = false
  end
end
