# ActiveJob metrics
Yabeda::ActiveJob.install!

SolidQueue.on_start do
  # Start prometheus exporter on a new thread on port PROMETHEUS_EXPORTER_PORT
  Yabeda::Prometheus::Exporter.start_metrics_server!
end
