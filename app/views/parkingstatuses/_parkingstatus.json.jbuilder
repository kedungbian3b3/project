json.extract! parkingstatus, :id, :staff_id, :available, :slotid, :parkingfee_id, :paymentmethod_id, :customer_id, :car, :numberplate, :date, :created_at, :updated_at
json.url parkingstatus_url(parkingstatus, format: :json)
