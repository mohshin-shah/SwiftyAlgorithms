# SwiftyAlgorithms

Welcome to **SwiftyAlgorithms**, a Swift package designed to help Apple Swift developers practice and learn Data Structures and Algorithms (DSA) through hands-on coding. This repository provides a collection of common algorithms and data structure solutions, complete with unit tests for each one. The goal of this project is to create a learning platform for Swift developers by contributing algorithmic solutions and leveraging the power of GitHub Projects for managing tasks and progress.

## Key Features

- **Algorithm Implementations**: Explore solutions for common algorithms such as Sliding Window, Two Pointer techniques, and Dynamic Programming.
- **Flexible Unit Testing**: Write test cases for algorithms with ease using the provided `AlgorithmTestCase` structure.
- **GitHub Projects Integration**: Contribute to the repository and track progress using GitHub Projects.
- **Learning-Oriented**: This repository is specifically designed for learning purposes and serves as a community space for practicing algorithms and mastering Swift.

## Algorithms Implemented

The following categories of algorithms have been implemented:

- **Sliding Window**
  - Fruit Basket
  - Longest Substring with K Distinct Characters
  - Minimum Window Matching Pattern
  - And more...
  
- **Two Pointers**
  - Best Time to Buy and Sell Stock
  - Two Sum
  - Product of Array Except Self
  - And more...

- **Dynamic Programming**
  - Climb Stairs
  - And more...

## Quick Start

To use the `SwiftyAlgorithms` package in your project, clone this repository and add it to your Xcode project or Swift Package Manager.

```bash
git clone https://github.com/your-username/SwiftyAlgorithms.git
```

## Running Unit Tests

Each algorithm is covered with unit tests to ensure edge cases are handled effectively. The `testAlgorithm` function allows you to easily test algorithms with multiple inputs. Here’s how you can use it:

### Example: Using `testAlgorithm` for Testing

Let's say you want to test an algorithm that finds the maximum sum subarray of a given size `k`. You can write a unit test using `testAlgorithm` as follows:

```swift
import XCTest
@testable import SwiftyAlgorithms

class MaximumSumSubarrayTests: XCTestCase {
  
  func testMaximumSumSubarray() {
    let testCases = [
      AlgorithmTestCase([2, 1, 5, 1, 3, 2], 8, "Max sum of subarray of size 3 is 8"),
      AlgorithmTestCase([2, 3, 4, 1, 5], 7, "Max sum of subarray of size 2 is 7")
    ]
    
    testAlgorithm(name: "Maximum Sum Subarray", with: testCases) { input in
      // Replace with the actual algorithm implementation
      return maximumSumSubarrayOfSizeK(input: input)
    }
  }
}
```

The `AlgorithmTestCase` structure helps in defining inputs, expected outputs, and an optional description for each test case. The `testAlgorithm` function then runs through the test cases and prints a summary of the results, making it easy to debug or verify your algorithm.

## Useful Debug Log:
`AlgorithmTestCase` and `testAlgorithm` takes care of providing a verbose logging for testcases, which algorithm that log belong to and proper input and expecte data along with the test result, if it passed or failed. You may easily search in the log which test cases failed.
<img width="1300" alt="demo" src="https://github.com/user-attachments/assets/5c56dd7a-a66d-4968-86b3-18bd6adc03b8">


## Contributing

### Using GitHub Projects

We manage the development of this package through GitHub Projects, which helps in organizing tasks and tracking progress. You can view the project board here: [SwiftyAlgorithms GitHub Project](https://github.com/users/mohshin-shah/projects/1).

Here’s how you can contribute:

1. **Browse Open Issues**: Visit the [project board](https://github.com/users/mohshin-shah/projects/1) to find issues or tickets for algorithms that need to be implemented or improved.
2. **Create a Ticket**: If you want to work on a new algorithm or an existing issue, feel free to create a new ticket. Include a clear description and goals for the algorithm or issue you're working on.
3. **Write Your Solution**: Implement the algorithm in Swift. If possible, use efficient data structures and techniques.
4. **Add Unit Tests**: Ensure your implementation is covered with unit tests, especially edge cases.
5. **Submit a Pull Request**: Once you've implemented and tested your algorithm, submit a PR linking to the relevant issue or ticket. Our maintainers will review your PR and provide feedback.

### Coding Style

Please follow these guidelines while contributing:

- **Use Swift best practices**: Write readable, clean, and idiomatic Swift code.
- **Test your code**: All algorithms should be covered by unit tests, including edge cases.
- **Commit messages**: Write meaningful and descriptive commit messages.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
