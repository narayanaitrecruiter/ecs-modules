output "vpc_id" {
  value = aws_vpc.non_prod_vpc.id    
  
}

output "subnet_id" {
  value = aws_subnet.public[*].id
  
}