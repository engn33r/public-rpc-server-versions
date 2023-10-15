rpcs_list="rpcs.txt"
rpcs_list_lines=$(cat $rpcs_list)

for single_line in $rpcs_list_lines; do
    echo "  >>> $single_line"
    curl -s -X POST -H 'Content-Type: application/json' -d '{"jsonrpc": "2.0", "method": "web3_clientVersion", "params": [], "id": 1}' $single_line | jq --raw-output '.result'
    echo ""
done