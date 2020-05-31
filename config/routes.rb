# frozen_string_literal: true

Cough::Engine.routes.draw do
  root to: proc {
    [
      200, { 'Content-Type' => 'application/json' },
      [
        {
          service: ENV['SERVICE_NAME'],
          version: ENV['COMMIT'].to_s.strip,
          job: ENV['JOB'].to_s.strip,
          stage: ENV['STAGE'].to_s.strip
        }.to_json
      ]
    ]
  }
end
