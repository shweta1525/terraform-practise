variable "vpc-cidr" {
    default = "10.10.0.0/16"  
}

variable "public-cidr" {
 default = "10.10.0.0/20" 
}

variable "pub-availability_zone" {
    default = "us-east-2a"  
}

variable "pri-cidr" {
    default = "10.10.16.0/20"  
}

variable "pri-availability_zone" {
    default = "us-east-2b"
  
}