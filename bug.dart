```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data using jsonData['key']
    } else {
      // Handle error responses
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, JSON decoding errors, etc.)
    print('Error fetching data: $e');
    //Consider rethrowing the exception for higher level handling
    rethrow;
  }
}
```