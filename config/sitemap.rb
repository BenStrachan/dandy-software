# Set the host name for URL creation
require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "https://www.dandy.software"
SitemapGenerator::Sitemap.create do

  add '/pricing', :changefreq => 'weekly'
  add '/contact', :changefreq => 'weekly'

end
