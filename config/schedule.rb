set :output, File.expand_path("../../log/cron_log.log", __FILE__)
env :PATH, ENV['PATH']

every 2.minutes do
   rake "twitter:tweet_translation"
end

every 30.minutes do
   rake "twitter:translate"
end
