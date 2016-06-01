module ApplicationHelper
  def some_good_cache_block(expires_time)
    Rails.cache.fetch('some_good_cache_block', expires_in: expires_time) do
      yield.html_safe if block_given?
    end
  end
end
