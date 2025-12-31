variable "My_Detailed_Network_Info" {
    description = "Ec2 instance"
    type = object({
      vpc_cidr = string
      vpc_names = string
      subnet_info = list(object({
        subnet_cidr = list(string)
        subnet_names = list(string)
        subnet_az = list(string)
      }))
    })

    default = {
      vpc_cidr = "10.0.0.0/16"
      vpc_names = "Demo_1_vpc"
      subnet_info = [ {
        subnet_cidr = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
        subnet_names = ["My_Web_Sub","My_App_Sub","My_DB_Sub","My_Auth_Sub"]
        subnet_az = ["ap-south-1a","ap-south-1b","ap-south-1c","ap-south-1a"]
      } ]
    }
}