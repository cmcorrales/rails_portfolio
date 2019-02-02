class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://placehold.it/600x400"
    self.thumb_image ||= "https://placehold.it/350x200"
  end

end
