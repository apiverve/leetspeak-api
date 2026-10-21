# Leet Speak API - PHP Package

Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words. Submit any string with an encode or decode mode to receive the converted text and a count of changed characters.

## Installation

Install via Composer:

```bash
composer require apiverve/leetspeak
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Leetspeak\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'This is a simple piece of text',
    'mode' => 'encode'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Leetspeak\Client;
use APIVerve\Leetspeak\Exceptions\APIException;
use APIVerve\Leetspeak\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'This is a simple piece of text', 'mode' => 'encode']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/leetspeak?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/leetspeak?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/leetspeak?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
