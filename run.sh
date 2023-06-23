#!/usr/bin/env bash
set -e
read -rp "Enter container name: " container
echo "Preparing SBOM and scanning container image..."
docker run -dit --rm --name vulnscanner vulnscanner > /dev/null 2>&1
docker exec -i vulnscanner sh -c "syft $container -o cyclonedx-json=sbom.json && grype sbom:sbom.json"
docker stop vulnscanner > /dev/null 2>&1
