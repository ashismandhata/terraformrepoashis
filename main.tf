# A simple provider-less resource for testing
resource "null_resource" "atlantis_test" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "echo 'Atlantis is running successfully!'"
  }
}

output "atlantis_status" {
  value = "If you see this, Atlantis planned successfully."
}