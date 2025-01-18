variable "name" {
  description = "(Required) The Name which should be used for this Resource Group."
  type        = string

  validation {
    condition     = can(regex("^[a-z][a-z0-9\\-]{2,62}$", var.name))
    error_message = "The resource name must be 3-63 characters long, start with a lowercase letter, and only contain lowercase letters and numbers."
  }
}

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist."
  type        = string
}

variable "managed_by" {
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = null
}
