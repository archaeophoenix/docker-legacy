#!/bin/sh

echo "Starting Node container..."

# install dependencies jika belum ada
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    yarn install
fi

# generate vite project jika belum ada
if [ ! -f "package.json" ]; then
    echo "No package.json found!"
    exit 1
fi

# start vite
yarn dev --host