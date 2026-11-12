# Nginx Log Analyzer

A Bash-based project that analyzes Nginx access logs and generates useful server traffic statistics.

## Features

- Displays total HTTP requests.
- Identifies the top 10 client IP addresses.
- Lists the most requested URLs.
- Counts HTTP 404 and 500 errors.
- Displays request counts per hour.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- Nginx
- AWK
- Sort and Uniq
- Cron (optional scheduling)

## Project Structure

```text
nginx-log-analyzer/
├── log_analyzer.sh
└── README.md
```

## How to Run

1. Ensure Nginx is installed and generating access logs.
2. Clone this repository.
3. Navigate into the project directory.
4. Execute:

```bash
chmod +x log_analyzer.sh
./log_analyzer.sh
```

## Log File

The script reads the default Nginx access log:

```text
/var/log/nginx/access.log
```

Make sure your user has permission to read this file.

## Learning Outcomes

- Linux log-file analysis.
- Bash automation.
- AWK text processing.
- HTTP status-code monitoring.
- Server traffic analysis.
