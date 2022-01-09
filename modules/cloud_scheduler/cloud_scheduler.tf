resource "google_cloud_scheduler_job" "notification-job" {
  name             = "notification-job"
  schedule         = "*/5 * * * *"

  http_target {
    http_method = "GET"
    uri         = "https://notifications-dot-household-planner-333519.uc.r.appspot.com/send_notifications"
  }
}