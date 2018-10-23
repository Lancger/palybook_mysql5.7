#!/bin/bash
password=
newpassword=MyNewPass4!
expect <<EOF
spawn mysql -uroot -p
expect "password"
send "${password}\n"
expect "mysql>" 
send "ALTER USER 'root'@'localhost' IDENTIFIED BY \"${newpassword}\";\n"
expect "mysql>" 
send "use mysql;\n"
expect "mysql>" 
send "update user set host='%' where user='root' and host='localhost';\n"
expect "mysql>" 
send "flush privileges;\n"
expect eof
EOF

