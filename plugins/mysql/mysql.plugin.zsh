export PATH="/usr/local/mysql/bin:$PATH"

alias mysqlstart='sudo mysqld_safe5'
alias mysqlstop='mysqladmin5 -u root -p shutdown'
alias mysqlstatus='mysqladmin5 -u root -p ping'