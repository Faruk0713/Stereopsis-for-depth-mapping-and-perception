#!/bin/bash
# Script to download the Middlebury Ambient Skates dataset for reference and testing

echo "Creating directories..."
mkdir -p data/middlebury

echo "Downloading the Ambient Skates dataset..."
curl -o data/ambient-skates.zip https://vision.middlebury.edu/stereo/data/scenes2021/zip/ambient-skates.zip

echo "Extracting data..."
# Using Python's built-in zip module so it works across Windows, Mac, and Linux
python -c "import zipfile; zipfile.ZipFile('data/ambient-skates.zip', 'r').extractall('data/middlebury/')"

echo "Dataset successfully extracted to: data/middlebury/ambient-skates/"
