class Supplier < ApplicationRecord
  has_one :account, dependent: :destroy
end
