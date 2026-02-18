# Log Archive Tool 

A robust and simple Command Line Interface (CLI) tool written in Bash to automate the archiving and compression of system logs. This tool helps keep Unix-based systems organized by compressing log directories into `.tar.gz` files and maintaining an execution history.

## 🌟 Features

* **Effortless Compression:** Automatically packs log directories into compressed archives.
* **Timestamped Filenames:** Generates unique names using the format `logs_archive_YYYYMMDD_HHMMSS.tar.gz`.
* **Audit Logging:** Records every archiving operation with a timestamp in a local log file.
* **Flexible Arguments:** Works with any directory path provided via the command line.

## Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/Gabrieldores/log-archive-tool.git](https://github.com/Gabrieldores/log-archive-tool.git)
    cd log-archive-tool
    ```

2.  **Make the script executable:**
    ```bash
    chmod +x log-archive.sh
    ```

3.  **(Optional) Install globally:**
    To run the tool from anywhere, move it to your local bin directory:
    ```bash
    sudo cp log-archive.sh /usr/local/bin/log-archive
    ```

## Usage

To archive a directory (e.g., `/var/log`), simply run:

```bash
./log-archive.sh /var/log
