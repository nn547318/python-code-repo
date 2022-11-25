from netmiko import Netmiko
from pprint import pprint

hosts = ["192.168.1.101", "192.168.1.102","192.168.1.103","192.168.1.104"]
device = {"device_type": "cisco_ios",
"ip": "192.168.1.101", 
"username": "student", 
"password": "Meilab123", 
"port": "22"
}

for host in hosts:
    device["ip"] = host
    net_connect = Netmiko(**device)
    table = net_connect.send_command("show ip route", use_textfsm=True)
    net_connect.disconnect() 
    
    print("-"*100)
    print(f'Router{host[-1]} routing table:')
    for item in table:
        pprint(item, width=60)
    
