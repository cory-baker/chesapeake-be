class StaticStation < ApplicationRecord
  self.table_name = "static_stations"

  belongs_to :public_company, class_name: "StaticPublicCompany", foreign_key: "company_id", primary_key: "id"
  belongs_to :hex, class_name: "StaticMapHex", foreign_key: "hex_id", primary_key: "id", optional: true
end
