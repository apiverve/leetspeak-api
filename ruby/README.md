# Leet Speak API - Ruby Gem

Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words. Submit any string with an encode or decode mode to receive the converted text and a count of changed characters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_leetspeak'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_leetspeak
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_leetspeak'

# Initialize the client
client = APIVerve::Leetspeak::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "This is a simple piece of text",
  mode: "encode"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "This is a simple piece of text", mode: "encode" })
  puts response["data"]
rescue APIVerve::Leetspeak::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Leetspeak::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Leetspeak::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "7h!5 !5 4 5!mp13 p!3c3 0f 73x7",
    "mode": "encode",
    "changedCharacters": 17
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/leetspeak?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/leetspeak?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/leetspeak?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
