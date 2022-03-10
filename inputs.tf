# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qui 10 Mar 2022
# TERRAFORM MODULE AWS CLOUDFORMATION


variable "template" {

    type = map(object({
        stack_name = string
        template_body = string
        parameters = map(string) 
    }))
}

variable "capabilities" {

    description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND"
    type        = list(string)
}

variable "on_failure" {

    description = "Action to be taken if stack creation fails. Be one of: DO_NOTHING, ROLLBACK or DELETE"
    type        = string
    default     = "ROLLBACK"
}

variable "timeout_in_minutes" {
    
    description = ""
    type        = number
    default     = 30
}

variable "tags" {}
