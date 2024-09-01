json.extract! notification, :id, :user_id, :message, :type, :status, :date, :created_at, :updated_at
json.url notification_url(notification, format: :json)
