# Unhandled Exceptions in Asynchronous Dart HTTP Requests

This repository demonstrates a common error in Dart asynchronous programming and provides a solution. The original code lacks comprehensive exception handling in an asynchronous HTTP request, leading to potential crashes or unexpected behavior.

The solution implements more robust error handling to gracefully manage different failure scenarios, improving the application's stability and resilience.

## Bug
The `bug.dart` file contains the initial code with limited exception handling. It only prints errors to the console instead of taking more sophisticated actions.

## Solution
The `bugSolution.dart` file offers a more robust approach, handling specific exceptions and providing informative error messages or fallback mechanisms.