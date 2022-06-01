resource "google_storage_bucket" "gcs_trf_state" {
  project                     = var.project_id
  name                        = "bodendava-gcs-it-trf-${var.environment}-eus1-001" # dev - prod
  location                    = "US-EAST1"
  force_destroy               = true
  uniform_bucket_level_access = true
  storage_class               = var.storage_calss # "REGIONAL - MULTI_REGIONAL
  labels = {
    "Workload" = "IT",
    "Owner" = "Erick Saenz"
  }

  versioning {
    enable = true
  }

}