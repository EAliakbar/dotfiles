#!/bin/bash

# Remaps CMD+Q to "Hide Microsoft Teams" in Microsoft Teams
# instead of quitting the app entirely.

defaults write -app "Microsoft Teams" NSUserKeyEquivalents \
  '{"Hide Microsoft Teams" = "@q";}'

echo "✅ Done! Please restart Microsoft Teams for changes to take effect."
echo ""
echo "To undo, run:"
echo '  defaults delete -app "Microsoft Teams" NSUserKeyEquivalents'
