# frozen_string_literal: true

Rails.application.config.after_initialize do
  HealthMonitor.configure do |config|
    config.file_absence.configure do |file_config|
      file_config.filename = 'public/remove-from-nginx'
    end
    # Make this health check available at /health
    config.path = :health

    config.error_callback = proc do |e|
      unless e.is_a?(HealthMonitor::Providers::FileAbsenceException)
        Rails.logger.error "Health check failed with: #{e.message}"
      end
    end
  end
end
