# List all commands
[default]
list:
    @just --list

# Build the project
build:
    pnpm run build

# Run the dev server
dev:
    pnpm run dev

# Preview the project
preview:
    pnpm run preview

# Push the code to all git mirrors
push:
    git push origin main
    git push tangled main

# Generate Cloudflare types
gen-types:
    pnpm run gen

# Run Wrangler commands
wrangle *args:
    pnpx wrangler {{ args }}
