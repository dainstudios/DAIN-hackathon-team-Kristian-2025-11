#!/bin/sh

data='{   "repo": "dainstudios/DAIN-hackathon-team-Kristian-2025-11",   "pr_title": "Enhance PR workflow to include commit and diff data",   "pr_body": "Added steps to extract PR info and changes for webhook.",   "pr_number": "13",   "merged_by": "eikevons",   "commits": "7b266b0 Refactor n8n webhook call to use JSON payload\nb774440 Enhance PR workflow to include commit and diff data\n",   "diff": " .github/workflows/pr-main-changelog-trigger.yml | 68 +++++++++++++++++++++----\n 1 file changed, 59 insertions(+), 9 deletions(-)\n" }'
N8N_URL='https://n8n.dainservices.com/webhook-test/89e4c260-fa24-4dfd-aa3c-64bd2e6fa2a0'

curl -X POST -d "$data"
curl \
-X POST \
-H "Content-Type: application/json" \
-d "$data" \
"$N8N_URL"
