module RootHelper
  def five_most_popular_tags(tags)
    tags.sort_by(&:amount_of_entries).reverse.take(5)
  end
end
