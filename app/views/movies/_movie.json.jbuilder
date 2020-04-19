json.extract! movie, :id, :Title, :Date, :Theater, :Evaluation, :Comment, :created_at, :updated_at
json.url movie_url(movie, format: :json)
