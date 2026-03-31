# GitHub Issue Fetcher

A simple Java application that fetches GitHub issues from a specified repository, filtered by labels.

## Features

- Fetches issues from the `thurstonhowell/oss-audit-24bai10020` repository
- Filters issues by user-specified labels (comma-separated)
- Displays issue titles in the terminal
- Sorts issues by creation date (newest first)

## Prerequisites

- Java 11 or higher
- Internet connection for GitHub API access

## How to Run

1. Compile the program:
   ```bash
   javac GitHubFetcher.java
   ```

2. Run the program:
   ```bash
   java GitHubFetcher
   ```

3. When prompted, enter labels separated by commas (or press Enter for all issues):
   ```
   Enter labels (comma separated): bug,enhancement
   ```

## Example Output

```
Enter labels (comma separated): bug
List of GitHub issues:
- Fix null pointer exception in data processing
- Resolve authentication timeout issue
```

## API Usage

The application uses GitHub's Search Issues API endpoint:
- `GET /search/issues`
- Filters by repository and labels
- Requires User-Agent header for API compliance

## Limitations

- Limited to 10 results per query
- Simple JSON parsing (may not handle all edge cases)
- No authentication (subject to GitHub's rate limits for unauthenticated requests)