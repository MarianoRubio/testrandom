data "template_file" "example" {
  template = "${var.example}"
}
resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id test update
    ami_id = "${var.ami_id}"
  }

  byte_length = 8
}
