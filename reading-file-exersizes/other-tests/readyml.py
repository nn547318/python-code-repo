import yaml

with open("data.yml") as f:
    interfaces = yaml.load(f, Loader=yaml.SafeLoader)
    print(interfaces)
    print(type(interfaces))
    for k, v in interfaces.items():
        print("-- The key {0} contains a {1} value.".format(str(k), str(type(v))) )
        for e in v:
            print(str(type(e)))

print(yaml.dump(interfaces))