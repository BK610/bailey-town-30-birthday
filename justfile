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

# Generate Cloudflare types
gen-types:
    pnpm run gen

# Run Wrangler commands
wrangle *args:
    pnpx wrangler {{ args }}
