data "azurerm_servicebus_topic" "main" {
  name                = "${var.servicebus_topic_name}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  namespace_name      = "${var.servicebus_namespace_name}"
}

resource "azurerm_servicebus_subscription" "main" {
  name     = "${var.servicebus_subscription_name}"
  topic_id = "${data.azurerm_servicebus_topic.main.id}"

  lock_duration                     = "${var.servicebus_subscription_lock_duration}"
  max_delivery_count                = "${var.servicebus_subscription_max_delivery_count}"
  forward_to                        = "${var.servicebus_subscription_forward_to}"
  forward_dead_lettered_messages_to = "${var.servicebus_subscription_forward_dead_lettered_messages_to}"

  requires_session                     = "${var.servicebus_subscription_requires_session}"
  dead_lettering_on_message_expiration = "${var.servicebus_subscription_dead_lettering_on_message_expiration}"
  enable_batched_operations            = "${var.servicebus_subscription_enable_batched_operations}"
  default_message_ttl                  = "${var.servicebus_subscription_default_message_ttl}"
  auto_delete_on_idle                  = "${var.servicebus_subscription_auto_delete_on_idle}"
}