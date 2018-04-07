class Sound < ApplicationRecord
  belongs_to :user

  enum category: { epoque_actuelle: 0, epoque_GL: 1 }
end
