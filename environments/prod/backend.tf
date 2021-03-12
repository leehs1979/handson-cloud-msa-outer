terraform {
  backend "gcs" {
    bucket = "architect-certification-289902-31-tfstate"
    prefix = "environments/prod"
  }
}
