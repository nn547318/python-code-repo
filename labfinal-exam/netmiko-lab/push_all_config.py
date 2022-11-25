import yaml
from jinja2 import Environment, FileSystemLoader
from netmiko import Netmiko
import logging

logging.basicConfig(level=logging.INFO)
                    
logger = logging.getLogger(__name__)
consoleHandler = logging.StreamHandler()
fileHandler = logging.FileHandler('netmiko_setting_routers.log')
consoleHandler.setLevel(logging.INFO)
fileHandler.setLevel(logging.INFO)
consoleHandler.setFormatter(logging.Formatter('%(name)s - %(levelname)s - %(message)s'))
fileHandler.setFormatter(logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s'))

logger.addHandler(fileHandler)
logger.addHandler(consoleHandler)

try:
    hosts = yaml.load(open('hosts.yml'), Loader=yaml.SafeLoader)
    env = Environment(loader = FileSystemLoader('.'), trim_blocks=True, autoescape=True)
    template = env.get_template('interfaces_config_template.j2')
except:
    logger.error("An error occured in opening file")

for host in hosts["hosts"]:
    config = template.render(data=host)
    logger.info(config)
    net_connect = Netmiko(host = host["name"],
                          username = host["username"], 
                          password = host["password"], 
                          port = host["port"], 
                          device_type = host["type"])
    logger.info(f"Logged into {host['name']} successfully")
    output = net_connect.send_config_set(config.split("\n"))
    logger.info(f"Pushed config into {host['name']} successfully")
    net_connect.disconnect()

logger.info("Done!")
