# frozen_string_literal: true

Cough::Engine.routes.draw do
  root to: proc {
    [
      200, { 'Content-Type' => 'application/json' },
      [
        {
          service: ENV['SERVICE_NAME'],
          host: ENV['SERVER_HOST'],
          ref: ENV['COMMIT'].to_s.strip,
          job: ENV['JOB'].to_s.strip,
          stage: ENV['STAGE'].to_s.strip,
          time: ENV['BUILD_TIME'].to_s.strip,
          versions: {
            lang: '3.0.2'
          }
        }.to_json
      ]
    ]
  }
end
