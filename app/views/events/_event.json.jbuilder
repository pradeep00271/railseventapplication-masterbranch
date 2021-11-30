json.extract! event, :event_name, :event_description, :start_date, :end_date, :status

json.address_attributes event.address.as_json(only: [:location, :street_address,:city,:state,:zip,:latitude,:longitude,:country])

