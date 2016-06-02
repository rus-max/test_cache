module ApplicationHelper
  def dev_cache(key, options = {}, &block)
    if Rails.env.development?
      Rails.cache.fetch(key, options) { capture(&block) }
    else
      cache(key, options, &block)
    end
  end
end
