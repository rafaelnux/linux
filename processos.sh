#!/bin/bash
echo "Load de processos"
echo "pgrep httpd | wc -l ; sudo /etc/init.d/httpd status; sudo /etc/init.d/varnish status; uptime;free -m; time df -h ;sudo netstat -ntu | grep ':80 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac"
pgrep httpd | wc -l ; sudo /etc/init.d/httpd status; sudo /etc/init.d/varnish status; uptime;free -m; time df -h ;sudo netstat -ntu | grep ':80 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac

echo "Processos PHP-CGI (Interpretador PHP) por user's"
echo "sudo ps aux | grep php-cgi | sort -k1 | awk '{print$1}' | uniq -c | sort -n"
sudo ps aux | grep php-cgi | sort -k1 | awk '{print$1}' | uniq -c | sort -n

echo "Processos PHP por user's"
echo "sudo ps aux | grep php* | sort -k1 | awk '{print$1}' | uniq -c | sort -n"
sudo ps aux | grep php* | sort -k1 | awk '{print$1}' | uniq -c | sort -n

echo "Quantidade de acessos porta 81"
echo "sudo netstat -ntu | grep ':81 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac"
sudo netstat -ntu | grep ':443 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac

echo "Quantidade de acessos porta 443"
echo "sudo netstat -ntu | grep ':443 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac"
sudo netstat -ntu | grep ':443 '| awk '{print $5}' | grep -v "servers\|Address" | cut -d: -f1 | sort | uniq -c | sort -n | grep -v '127\.0\.0\.1\|CLOSE\_WAIT\|TIME\_WAIT\|LISTEN|ESTABLISHED' | tac | head | tac | tac | head -n8 | tac

echo "Serviços httpd e varnish"
echo "sudo /etc/init.d/httpd status ; /etc/init.d/varnish status"
sudo /etc/init.d/httpd status ; /etc/init.d/varnish status
