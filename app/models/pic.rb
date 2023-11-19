class Pic < ApplicationRecord
belongs_to :NativeRegion

validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i,
:message => "must have a valid file type", multiline: true

validates :name, presence: true, uniqueness: true, length: {minimum: 5}

end
