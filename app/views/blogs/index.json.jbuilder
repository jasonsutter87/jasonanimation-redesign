json.array!(@blogs) do |blog|
  json.extract! blog, :id, :date, :title, :post
  json.url blog_url(blog, format: :json)
end
