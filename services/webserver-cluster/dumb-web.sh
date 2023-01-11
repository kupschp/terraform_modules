#!/bin/bash

cat > index.html <<EOF
<h1>Philtest</h1>
<p>db address: ${db_address}</p>
<p>db port: ${db_port}</p>
<p>return_message: ${return_message}</p>
EOF

nohub busybox httpd -f -p ${server_port} &
