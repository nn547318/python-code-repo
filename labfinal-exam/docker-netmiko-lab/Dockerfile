FROM python:3.9
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app
COPY netmiko-lab /app
RUN git clone https://github.com/networktocode/ntc-templates
RUN export NET_TEXTFSM=ntc-templates/ntc_templates/templates
RUN chmod a+x runpython.sh
CMD ["./runpython.sh"]
 
