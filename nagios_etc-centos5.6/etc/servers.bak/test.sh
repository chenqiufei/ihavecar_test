#!/bin/bash
#for i in {1..20}
#do
for i in {1..200}
do
if [ -e 10.0.8.$i.cfg ];then
cat >> 10.0.8.$i.cfg << eff
define service{
        use                             dechao-service         ; Name of service template to use
        host_name                       SD-10.0.8.$i
        service_description             check_disk_rw
        check_command                   check_nrpe!check_disk_rw_/
        }
eff
fi
done
