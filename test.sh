#!/bin/bash
curl -k -X POST https://localhost:4433/retrieve \
    -F data='{"op": "showConfig", "path": []}' \
    -F key='vyos'
