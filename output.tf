output "id" {
  description = "The ServiceBus Subscription ID."
  value = "${azurerm_servicebus_subscription.main.id}"
  sensitive = false
}