class Blog < ApplicationRecord
  validates :body, presence: true

  default_scope { order(id: :desc) }
  after_create_commit { broadcast_prepend_to "blogs" }
  after_update_commit { broadcast_replace_to "blogs" }
  after_destroy_commit { broadcast_remove_to "blogs" }
end
