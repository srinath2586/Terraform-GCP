provider "google" {
  credentials = file("/mnt/f/srinath_kore/cloudEthix/terraform/terraform-gcp/tf.json")
  project     = "moonlit-bliss-375918"
  region      = "us-east4"
  zone        = "us-east4-c"
}