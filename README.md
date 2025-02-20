# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: unhandled exceptions during asynchronous operations.  The `bug.dart` file shows code that might fail silently if an exception occurs during an HTTP request. The `bugSolution.dart` file shows how to properly handle these exceptions using a try-catch block.

**Problem:** Asynchronous operations (like network requests) can throw exceptions. If these exceptions aren't caught, your application might crash or behave unexpectedly.

**Solution:** Use try-catch blocks to gracefully handle potential exceptions. The `rethrow` keyword allows higher levels of the call stack to handle the exception if needed.