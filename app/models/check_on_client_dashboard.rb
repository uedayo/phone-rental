class CheckOnClientDashboard
  include ActiveModel::Model
  attr_accessor :check_id,
                :user_id,
                :carrier_id,
                :maker_id,
                :group_id,
                :place_id,
                :terminal_name,
                :terminal_id,
                :status,
                :take_out,
                :note,
                :carrier_name,
                :maker_name,
                :group_name,
                :model_name,
                :volume,
                :due_date,
                :check_created_at,
                :check_updated_at,
                :color,
                :phone_number,
                :wifi,
                :carrier_name_kana,
                :maker_name_kana,
                :group_name_kana
end
