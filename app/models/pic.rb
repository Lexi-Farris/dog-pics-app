class Pic < ApplicationRecord
belongs_to :native_region #derived from corresponding model name (including capitalization)

validates :name, presence: true, uniqueness: true, length: {minimum: 5}

end
