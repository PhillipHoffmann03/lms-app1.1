json.extract! message, :id, :sender_id, :recipient_id, :subject, :body, :date_sent, :status, :created_at, :updated_at
json.url message_url(message, format: :json)
