# Leet Speak API - Dart/Flutter Client

Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words. Submit any string with an encode or decode mode to receive the converted text and a count of changed characters.

[![pub package](https://img.shields.io/pub/v/apiverve_leetspeak.svg)](https://pub.dev/packages/apiverve_leetspeak)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Leet Speak API](https://apiverve.com/marketplace/leetspeak?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_leetspeak: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_leetspeak/apiverve_leetspeak.dart';

void main() async {
  final client = LeetspeakClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'This is a simple piece of text',
      'mode': 'encode'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Leet Speak API](https://apiverve.com/marketplace/leetspeak?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/leetspeak](https://docs.apiverve.com/ref/leetspeak?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
