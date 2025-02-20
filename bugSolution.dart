```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle the error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('Error decoding JSON: $e');
  } catch (e) {
    // Handle other exceptions
    print('Error fetching data: $e');
    // Consider more sophisticated error handling, such as logging or displaying a user-friendly message
  }
}
```