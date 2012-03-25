class Content < ActiveRecord::Base

  acts_as_taggable

  validates :key, :uniqueness => true, :presence => true
  validates :body, :presence => true
  validates :title, :presence => true
  
  def self.[](key)
    entry = find_by_key(key.to_s)
    entry and entry.body or nil
  end
  
  def self.[]=(key, body)
    entry = find_or_create_by_key(key.to_s)
    entry.update_attribute(:body, body)
  end
  
end
