class ApplicationController < ActionController::Base
  before_action :all_categories, :uniq_visitors, :time_now, :authenticate_user!
  def all_categories
    @categories = Category.all
  end
  def time_now
    @time_now = Time.now
  end
  def uniq_visitors
    require "browser"
    browser = Browser.new(request.headers['User-Agent'], accept_language: request.headers["Accept-Language"])
    @uniq_visitor = UniqVisitor.new
    @uniq_visitor.ip = request.remote_ip
    @uniq_visitor.browser = browser.name
    @uniq_visitor.version = browser.version
    @uniq_visitor.save

    @uniq_visitors_chrome = UniqVisitor.where(browser: "Chrome").count
    @uniq_visitors_firefox = UniqVisitor.where(browser: "Firefox").count

  end


end
