### GENERAL CONFIGS ###

variable "project_name" {
  description = "This variable will be a prefix for the resources created within this project"
}

variable "region" {
  description = "AWS Region where the resources will be created"
}


##### SSM VPC #####
variable "ssm_vpc_id" {
  description = "ID of the VPC used by SSM."
  type        = string


}

variable "ssm_public_subnet_1" {
  description = "ID of the first public subnet in the SSM VPC."
  type        = string

}

variable "ssm_public_subnet_2" {
  description = "ID of the second public subnet in the SSM VPC."
  type        = string

}

variable "ssm_public_subnet_3" {
  description = "ID of the third public subnet in the SSM VPC."
  type        = string

}

variable "ssm_private_subnet_1" {
  description = "ID of the first private subnet in the SSM VPC."
  type        = string

}

variable "ssm_private_subnet_2" {
  description = "ID of the second private subnet in the SSM VPC."
  type        = string

}

variable "ssm_private_subnet_3" {
  description = "ID of the third private subnet in the SSM VPC."
  type        = string

}

##### Balancer #####

variable "load_balancer_internal" {
  description = "Determines if the load balancer should be internal (true) or external (false)."
  type        = bool
}

variable "load_balancer_type" {
  description = "Type of the load balancer. It can be 'application', 'network', or 'classic'."
  type        = string
}

##### ECS General #####

variable "nodes_ami" {
  description = "AMI (Amazon Machine Image) used for the ECS nodes."
  type        = string
}

variable "node_instance_type" {
  description = "EC2 instance type used for the ECS nodes."
  type        = string
}

variable "node_volume_size" {
  description = "Size of the storage volume (in GB) for each ECS node."
  type        = number
}

variable "node_volume_type" {
  description = "Type of storage volume for the ECS nodes, e.g., 'gp2', 'io1'."
  type        = string
}

variable "cluster_on_demand_min_size" {
  description = "Minimum number of on-demand instances in the ECS cluster."
  type        = number
}

variable "cluster_on_demand_max_size" {
  description = "Maximum number of on-demand instances in the ECS cluster."
  type        = number
}

variable "cluster_on_demand_desired_size" {
  description = "Desired number of on-demand instances in the ECS cluster."
  type        = number
}

variable "cluster_spot_min_size" {
  description = "Minimum number of spot instances in the ECS cluster."
  type        = number
}

variable "cluster_spot_max_size" {
  description = "Maximum number of spot instances in the ECS cluster."
  type        = number
}

variable "cluster_spot_desired_size" {
  description = "Desired number of spot instances in the ECS cluster."
  type        = number
}

variable "capacity_providers" {
  type    = list(string)
  default = ["FARGATE", "FARGATE_SPOT"]
}