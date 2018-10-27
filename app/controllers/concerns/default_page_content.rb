module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Florian Marchal"
    @seo_keywords = "Florian Marchal portfolio"
  end
end