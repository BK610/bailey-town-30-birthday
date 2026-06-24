# List all commands
[default]
list:
    @just --list

# Build the project
build:
    pnpm run build

# Run type checks
check:
    pnpm run check

# Commit all files
commit message:
    git add .
    git commit -m "{{ message }}"

# Run the dev server
dev:
    pnpm run dev

# Generate Cloudflare types
gen-types:
    pnpm run gen

# Preview the project
preview:
    pnpm run preview

# Push the code to all git mirrors
push:
    git push origin main
    git push tangled main

# Run tests
test:
    pnpm run test

# Run Wrangler commands
wrangle *args:
    pnpx wrangler {{ args }}
