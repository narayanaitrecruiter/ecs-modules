########################################################################################################################
## Container registry for the service's Docker image
########################################################################################################################

resource "aws_ecr_repository" "ecr" {
  name         = "${lower(var.namespace)}/${lower(var.task_definition_family)}"
  force_delete = var.ecr_force_delete

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    name = var.environment
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr.repository_url
}
