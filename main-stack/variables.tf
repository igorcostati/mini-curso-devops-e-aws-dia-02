variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "labs-devops-na-nuvem-mini-curso-devops-e-aws"
  }
}

variable "assume_role" {
  type = object({
    region   = string
    role_arn = string
  })
  default = {
    region   = "us-east-1"
    role_arn = "arn:aws:iam::273444517440:role/labs-devops-na-nuvem-mini-curso-devops-e-aws-role"
  }
}

variable "queues" {
    type = list(object({
        name                      = string
        delay_seconds             = number
        max_message_size          = number
        message_retention_seconds = number
        receive_wait_time_seconds = number
    }))
    default = [{
        name                      = "labs-devops-na-nuvem-queue-1"
        delay_seconds             = 90
        max_message_size          = 2048
        message_retention_seconds = 86400
        receive_wait_time_seconds = 10
    },  
    {
        name                      = "labs-devops-na-nuvem-queue-2"
        delay_seconds             = 0
        max_message_size          = 1024
        message_retention_seconds = 345600
        receive_wait_time_seconds = 0
    }]
}