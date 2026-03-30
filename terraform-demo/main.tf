resource "local_file" "test" {
  content  = var.file_content
  filename = var.filename
}