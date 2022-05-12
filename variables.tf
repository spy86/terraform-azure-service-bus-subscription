###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the storage account is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type = string
}
###########################
# Service Bus Topic groups vars
###########################
variable "servicebus_topic_name" {
  description = "Specifies the name of the ServiceBus Topic resource . Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_namespace_name" {
  description = "Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_subscription_name" {
  description = "Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_subscription_lock_duration" {
  description = "The lock duration for the subscription as an ISO 8601 duration. The default value is 1 minute or P0DT0H1M0S . The maximum value is 5 minutes or P0DT0H5M0S ."
  type = string
  default = "PT1M"
}
variable "servicebus_subscription_max_delivery_count" {
  description = "The maximum number of deliveries."
  type = number
  default = 10
}
variable "servicebus_subscription_forward_to" {
  description = "The name of a Queue or Topic to automatically forward messages to."
  type = string
  default = ""
}
variable "servicebus_subscription_forward_dead_lettered_messages_to" {
  description = "The name of a Queue or Topic to automatically forward Dead Letter messages to."
  type = string
  default = ""
}
variable "servicebus_subscription_requires_session" {
  description = "Boolean flag which controls whether this Subscription supports the concept of a session. Defaults to false. Changing this forces a new resource to be created."
  type = bool
  default = false
}
variable "servicebus_subscription_dead_lettering_on_message_expiration" {
  description = "Boolean flag which controls whether the Subscription has dead letter support when a message expires. Defaults to false."
  type = bool
  default = true
}
variable "servicebus_subscription_enable_batched_operations" {
  description = "Boolean flag which controls whether the Subscription supports batched operations. Defaults to false."
  type = bool
  default = false
}
variable "servicebus_subscription_default_message_ttl" {
  description = "The Default message timespan to live as an ISO 8601 duration. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
variable "servicebus_subscription_auto_delete_on_idle" {
  description = "The idle interval after which the topic is automatically deleted as an ISO 8601 duration. The minimum duration is 5 minutes or PT5M."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
