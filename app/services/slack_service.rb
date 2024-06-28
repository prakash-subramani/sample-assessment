class SlackService

  def initialize(params)
    @message_params = params
  end

  def post_message
    begin
      HTTParty.post(ENV['SLACK_WEBHOOK_URL'],
                    headers: { 'Content-type': 'application/json' },
                    body: @message_params.to_json)
    rescue StandardError => e
      Rails.logger.info "Error while posting message - #{e.message}"
    end
  end
end