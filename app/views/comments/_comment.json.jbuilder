json.extract! comment, :id, :author_id, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)
json.content comment.content.to_s
