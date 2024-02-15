variable "accesskey" {
    default = "your_access_key"
}
variable "secret" {
    default = "your_secret_key"
}
variable "region" {
    default = "ap-south-1"
}
variable "cidr_vpc" {
    default = "10.0.0.0/16"
}
variable "cidr_for_subnet_a" {
    default = "10.0.0.0/28"
}
variable "cidr_for_subnet_b" {
    default = "10.0.0.16/28"
}
variable "cidr_for_subnet_c" {
    default = "10.0.0.32/28"
}
