# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qui 10 Mar 2022
# TERRAFORM MODULE AWS CLOUDFORMATION


resource "aws_cloudformation_stack" "template" {

    for_each            = var.template

    name                = each.value["stack_name"]
    template_body       = "${file(each.value["template_body"])}"
    parameters          = each.value["parameters"]
    capabilities        = var.capabilities
    on_failure          = var.on_failure
    timeout_in_minutes  = var.timeout_in_minutes

}