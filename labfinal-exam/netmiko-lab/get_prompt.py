from netmiko import Netmiko
device = {
"device_type": "cisco_ios",
"ip": "192.168.1.101", # R1 Mgmt Interface
"username": "student",
"password": "Meilab123",
"secret": "cisco",
"port": "22",
}
ip_list = ['192.168.1.101','192.168.1.102','192.168.1.103','192.168.1.104']

for ip in ip_list:
    device["ip"] = ip
    net_connect = Netmiko(**device) 
    print(f"Default prompt: {net_connect.find_prompt()}")

    net_connect.send_command_timing("disable") 
    print(f"Disable command: {net_connect.find_prompt()}")

    net_connect.enable()
    print(f"Enable command: {net_connect.find_prompt()}")
