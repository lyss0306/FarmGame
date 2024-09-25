# Target to run commands in directory1
dir1:
    @echo "Running in server folder"
    cd server && npm run dev

# Target to run commands in directory2
dir2:
    @echo "Running in client"
    cd client && npm start

# Combined target to run commands in both directories
all: dir1 dir2
    @echo "All commands completed."

# Phony targets ensure that the commands run every time, even if no files change
.PHONY: all dir1 dir2