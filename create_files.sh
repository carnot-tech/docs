#!/bin/bash

# Define an array of all file paths for both English and Japanese.
files=(
  # English files:
  "./en/introduction.mdx"
  "./en/pages/basics/chat.mdx"
  "./en/pages/basics/drag_and_drop.mdx"
  "./en/pages/basics/manifest.mdx"

  # Tools > Validation & Conversion (en)
  "./en/pages/tools/validation/input.mdx"
  "./en/pages/tools/validation/output.mdx"
  "./en/pages/tools/validation/markitdown_convert.mdx"

  # Tools > Productivity (en)
  "./en/pages/tools/productivity/github.mdx"
  "./en/pages/tools/productivity/notion.mdx"
  "./en/pages/tools/productivity/google_drive.mdx"
  "./en/pages/tools/productivity/google_sheets.mdx"
  "./en/pages/tools/productivity/google_calendar.mdx"
  "./en/pages/tools/productivity/chatwork.mdx"

  # Tools > Communication (en)
  "./en/pages/tools/communication/gmail.mdx"
  "./en/pages/tools/communication/slack.mdx"
  "./en/pages/tools/communication/discord.mdx"
  "./en/pages/tools/communication/line.mdx"

  # Tools > AI & LLM (en)
  "./en/pages/tools/ai/gemini.mdx"
  "./en/pages/tools/ai/grok.mdx"
  "./en/pages/tools/ai/anthropic.mdx"

  # Tools > E-Commerce (en)
  "./en/pages/tools/productivity/shopify.mdx"
  "./en/pages/tools/productivity/netsea.mdx"

  # Tools > Sandbox & Scripting (en)
  "./en/pages/tools/sandbox/python_sandbox_run.mdx"

  # Tools > Search & Data Retrieval (en)
  "./en/pages/tools/search/serpapi.mdx"
  "./en/pages/tools/search/pokeapi.mdx"
  "./en/pages/tools/search/youtube.mdx"
  "./en/pages/tools/search/arxiv.mdx"
  "./en/pages/tools/search/exaai.mdx"
  "./en/pages/tools/search/perplexity.mdx"
  "./en/pages/tools/search/teradata.mdx"

  # Tools > Files (en)
  "./en/pages/tools/files/input.mdx"

  # Tools > CMS & Web Tools (en)
  "./en/pages/tools/cms/wordpress.mdx"
  "./en/pages/tools/cms/firecrawl.mdx"

  # Tools > Jinba (en)
  "./en/pages/tools/jinba/jinba.mdx"
  "./en/pages/tools/jinba/search-corp.mdx"

  # Japanese files:
  "./ja/introduction.mdx"
  "./ja/pages/basics/chat.mdx"
  "./ja/pages/basics/drag_and_drop.mdx"
  "./ja/pages/basics/manifest.mdx"

  # Tools > Validation & Conversion (ja)
  "./ja/pages/tools/validation/input.mdx"
  "./ja/pages/tools/validation/output.mdx"
  "./ja/pages/tools/validation/markitdown_convert.mdx"

  # Tools > Productivity (ja)
  "./ja/pages/tools/productivity/github.mdx"
  "./ja/pages/tools/productivity/notion.mdx"
  "./ja/pages/tools/productivity/google_drive.mdx"
  "./ja/pages/tools/productivity/google_sheets.mdx"
  "./ja/pages/tools/productivity/google_calendar.mdx"
  "./ja/pages/tools/productivity/chatwork.mdx"

  # Tools > Communication (ja)
  "./ja/pages/tools/communication/gmail.mdx"
  "./ja/pages/tools/communication/slack.mdx"
  "./ja/pages/tools/communication/discord.mdx"
  "./ja/pages/tools/communication/line.mdx"

  # Tools > AI & LLM (ja)
  "./ja/pages/tools/ai/gemini.mdx"
  "./ja/pages/tools/ai/grok.mdx"
  "./ja/pages/tools/ai/anthropic.mdx"

  # Tools > E-Commerce (ja)
  "./ja/pages/tools/productivity/shopify.mdx"
  "./ja/pages/tools/productivity/netsea.mdx"

  # Tools > Sandbox & Scripting (ja)
  "./ja/pages/tools/sandbox/python_sandbox_run.mdx"

  # Tools > Search & Data Retrieval (ja)
  "./ja/pages/tools/search/serpapi.mdx"
  "./ja/pages/tools/search/pokeapi.mdx"
  "./ja/pages/tools/search/youtube.mdx"
  "./ja/pages/tools/search/arxiv.mdx"
  "./ja/pages/tools/search/exaai.mdx"
  "./ja/pages/tools/search/perplexity.mdx"
  "./ja/pages/tools/search/teradata.mdx"

  # Tools > Files (ja)
  "./ja/pages/tools/files/input.mdx"

  # Tools > CMS & Web Tools (ja)
  "./ja/pages/tools/cms/wordpress.mdx"
  "./ja/pages/tools/cms/firecrawl.mdx"

  # Tools > Jinba (ja)
  "./ja/pages/tools/jinba/jinba.mdx"
  "./ja/pages/tools/jinba/search-corp.mdx"
)

# Loop through each file, create directories as needed, and "touch" (create/update) the file.
for file in "${files[@]}"; do
  mkdir -p "$(dirname "$file")"
  touch "$file"
  echo "Created: $file"
done
