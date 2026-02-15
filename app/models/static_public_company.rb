class StaticPublicCompany < ApplicationRecord
  self.table_name = "static_public_companies"

  has_many :stations, class_name: "StaticStation", foreign_key: "company_id", primary_key: "id"
end
