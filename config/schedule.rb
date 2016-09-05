set :output, File.expand_path("../../log/cron_log.log", __FILE__)
set :job_template, "bash -c ':job'"

env :PATH, ENV['PATH']
env :GEM_HOME, ENV['GEM_HOME']
env :BUNDLE_APP_CONFIG, ENV['BUNDLE_APP_CONFIG']


every 2.minutes do
   rake "twitter:tweet_translation"
end

every 30.minutes do
   rake "twitter:translate"
end
