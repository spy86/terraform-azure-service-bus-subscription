<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_servicebus_subscription.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_subscription) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |
| [azurerm_servicebus_topic.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/servicebus_topic) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the storage account is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the storage account. | `string` | n/a | yes |
| <a name="input_servicebus_namespace_name"></a> [servicebus\_namespace\_name](#input\_servicebus\_namespace\_name) | Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_servicebus_subscription_auto_delete_on_idle"></a> [servicebus\_subscription\_auto\_delete\_on\_idle](#input\_servicebus\_subscription\_auto\_delete\_on\_idle) | The idle interval after which the topic is automatically deleted as an ISO 8601 duration. The minimum duration is 5 minutes or PT5M. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_subscription_dead_lettering_on_message_expiration"></a> [servicebus\_subscription\_dead\_lettering\_on\_message\_expiration](#input\_servicebus\_subscription\_dead\_lettering\_on\_message\_expiration) | Boolean flag which controls whether the Subscription has dead letter support when a message expires. Defaults to false. | `bool` | `true` | no |
| <a name="input_servicebus_subscription_default_message_ttl"></a> [servicebus\_subscription\_default\_message\_ttl](#input\_servicebus\_subscription\_default\_message\_ttl) | The Default message timespan to live as an ISO 8601 duration. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_subscription_enable_batched_operations"></a> [servicebus\_subscription\_enable\_batched\_operations](#input\_servicebus\_subscription\_enable\_batched\_operations) | Boolean flag which controls whether the Subscription supports batched operations. Defaults to false. | `bool` | `false` | no |
| <a name="input_servicebus_subscription_forward_dead_lettered_messages_to"></a> [servicebus\_subscription\_forward\_dead\_lettered\_messages\_to](#input\_servicebus\_subscription\_forward\_dead\_lettered\_messages\_to) | The name of a Queue or Topic to automatically forward Dead Letter messages to. | `string` | `""` | no |
| <a name="input_servicebus_subscription_forward_to"></a> [servicebus\_subscription\_forward\_to](#input\_servicebus\_subscription\_forward\_to) | The name of a Queue or Topic to automatically forward messages to. | `string` | `""` | no |
| <a name="input_servicebus_subscription_lock_duration"></a> [servicebus\_subscription\_lock\_duration](#input\_servicebus\_subscription\_lock\_duration) | The lock duration for the subscription as an ISO 8601 duration. The default value is 1 minute or P0DT0H1M0S . The maximum value is 5 minutes or P0DT0H5M0S . | `string` | `"PT1M"` | no |
| <a name="input_servicebus_subscription_max_delivery_count"></a> [servicebus\_subscription\_max\_delivery\_count](#input\_servicebus\_subscription\_max\_delivery\_count) | The maximum number of deliveries. | `number` | `10` | no |
| <a name="input_servicebus_subscription_requires_session"></a> [servicebus\_subscription\_requires\_session](#input\_servicebus\_subscription\_requires\_session) | Boolean flag which controls whether this Subscription supports the concept of a session. Defaults to false. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_servicebus_topic_name"></a> [servicebus\_topic\_name](#input\_servicebus\_topic\_name) | Specifies the name of the ServiceBus Topic resource . Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ServiceBus Subscription ID. |
<!-- END_TF_DOCS -->

## How to use

```
module "service-bus-subscription" {
  source  = "spy86/service-bus-subscription/azure"
  version = "1.0.1"
  resource_group_name = "weu-test-rg"
  servicebus_namespace_name = "dev-c803dd50-weu-sb-ns"
  servicebus_topic_name = "topic01"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  servicebus_subscription_auto_delete_on_idle = "P10675199DT2H48M5.4775807S"
  servicebus_subscription_dead_lettering_on_message_expiration = "true"
  servicebus_subscription_default_message_ttl = "P10675199DT2H48M5.4775807S"
  servicebus_subscription_enable_batched_operations = "false"
  servicebus_subscription_forward_dead_lettered_messages_to = ""
  servicebus_subscription_forward_to = ""
  servicebus_subscription_lock_duration = "PT1M"
  servicebus_subscription_max_delivery_count = "10"
  servicebus_subscription_requires_session= "false"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}
```