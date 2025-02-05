# Rails application

This is a test application to understand the relation between:

- [Solid Queue](https://github.com/rails/solid_queue)
- [yabeda-prometheus](https://github.com/yabeda-rb/yabeda-prometheus)
- [yabeda-activejob](https://github.com/Fullscript/yabeda-activejob)

to be able to monitor SolidQueue jobs with Prometheus.

## How to run

```bash
bundle install
RAILS_LOG_LEVEL=debug RAILS_ENV=production bin/jobs start
```

## What it does

- It has a single TalkerJob that runs every 1 second

## Expectations

- There should be metrics exposed at `http://localhost:9394/metrics`
