json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :name, :terminal_master_id, :volume, :color_id, :phone_number, :updated_os_id, :place_id, :wifi
  json.url terminal_url(terminal, format: :json)
end