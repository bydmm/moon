if Rails.env.production?
  $redis = Redis.new(:host => ENV['redis_host'], :port => 6379, :password => ENV['redis_password'])
else
  $redis = Redis.new(:host=>:localhost, :port =>6379 )
end
