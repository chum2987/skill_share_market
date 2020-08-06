require 'mechanize'

class Scraping < ApplicationRecord
  def self.scrape
    agent = Mechanize.new
    page = agent.get("https://coconala.com/")
    elements = page.search("div.subCategoryBoxInner")
    elements.each do |element|
      # puts element.inner_text
      category = Category.new
      category.name = element.inner_text
      category.save
    end
  end
end
