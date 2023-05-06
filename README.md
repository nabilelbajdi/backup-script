# Backup Script in Bash

- Given a source directory and a target, takes a backup of source to target.
- Handles targets both local or remote (ssh).
- Implemenmts incremental backups.
- Each new backup lives in a timestamped directory (i.e: the name of the directory is a timestamp).
