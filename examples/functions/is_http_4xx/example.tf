data "http" "example" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

output "is_http_4xx" {
  value = provider::assert::is_http_4xx(data.http.example.status_code)
}
