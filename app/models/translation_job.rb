class TranslationJob < ActiveRecord::Base
  belongs_to :source, :class_name => 'TwitterAccount'
  belongs_to :target, :class_name => 'TwitterAccount'

  def self.run
    Microsoft::Translator.set_app_id(read_ms_app_id)
    TranslationJob.all.each do |translation|
      translation.source.fetch_tweets
      translation.source.translate(translation.from_lang, translation.to_lang)
      translation.target.tweet_translation(translation.source.new_tweets)
    end
  end

  def self.read_ms_app_id
    filename = File.join(Rails.root, 'config', 'ms-translator.yml')
    yml_result = YAML::load(File.read(filename))
    yml_result['app_id']
  end
end