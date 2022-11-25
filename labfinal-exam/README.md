![Open in Codespaces](https://classroom.github.com/assets/open-in-codespaces-abfff4d4e15f9e1bd8274d9a39a0befe03a0632bb0f153d0ec72ff541cedbe34.svg)
# Lab exam -  Part 2 - Take home
## Please note all the instructions are provided in each of the tasks. It's based on the work you have already done. DO NOT CLONE THIS BEFORE READING THE INSTRUCTIONS FULLY!

Before you start please check if:

- You can connect to the VPN and the 10.0.134.XX network
- Have the correct devtools installed on your machine
- No additional points for finishing early; take your time! 
- ✨You have to finish the task on/or before Friday, October 21, 11:30 PM ✨
- Please read the Task 1 before you clone, you will be directed to clone this into a specific folder. 
- You will be evaluated based on the following instructions, working on the remote machine and including meaningful messages in your commits and valid assumption,if any. 
- You can reuse your own work. 
- Follow the order of the tasks. 
- Do not copy code without Reference or Citation


- Note the following terms: 
 1. Remote Machine is the 10.0.134.X vm. 
 2. Local Machine is your laptop/desktop with the vpn installed.
 3. POD is your assigned pods 
 
 Also be aware of the following: 
 
- You have to configure the management interface manually on the devices before your access them programmatically (read lab 4 for details), do not try to access these directly from the local machine, the firewall will block you.
- The PODS will reset the connection every 30 mins and the configuration in them cannot be guaranteed. 

## Task 0

In about a single page, describe your local environment in your "Local Machine". Include details about your machine, your operating system, various tools that you have installed that help with development. (IDEs, editors, vms, containers and others.) 

Please mention what tools you preferred and what you did not like and why. 

You can include screenshots of your setup like in addition to the single page of content. Submit this using a PDF or Word Document with the title "development_environment".

## Task 1 

- SSH to the remote machine
- Create a folder in your home directory with your First Name and the last 2 digits of your banner id. 
- Clone this repository inside the folder you just created. 
- Using your favourite editor in linux (on the remote machine) create a text file called "my_fav_commands.txt" and write any 5 commands in linux that you like. 
- Run the examples of the commands you listed in the remote machines shell 
- Move the file "my_fav_commands.txt" to the working directory of the repository 
- Commit and push the code with the message "Added my fav commands"
- Navigate to your home directory 
- Exit the SSH connection and reconnect 
- Navigate to your home directory and copy the file ".bash_history" to the working directory of the repository 
- Add, Commit and Push the code with the message "Added my bash history" 

## Task 2

- Convert the configuration given in Lab 4 Appendix 2A to use OSPF instead of RIP as the IGP. SSH into your remote machine and save these under the folder "router_config" (inside your repository) with "Rx.config" for each routers name. 
- Commit and push this with the message "Updated router configuration". 
- Log into the PODS and configure management interfaces 
- SSH to the remote machine 
- Write the code from "Lab 4 - Task1" to the file called "get_prompt.py" in the directory "netmiko-lab" (Create this inside the repository)
- Make a commit here with the message "Updated get_prompt"
- Run the code and commit as many times as needed, including troubleshooting messages, if there are any errors. 
- Push the code to remote.
- Repeat the lab exercise in lab 4(page 13), with the updated OSFP configuration and answer as many of the 5 questions that you can.

## Task 3 

-	Create a folder called docker-netmiko-lab in the repository 
-	Convert the steps given in Lab 4 under section "Lab Environment and Preparation" to use docker instead of the virtual environment and write this to a file called "Docker_Env.txt" in the repository, some optional constrains are:
1. Use the official python image instead of the ubuntu image that you used in lab 2
2. Use the "requirements.txt" that you create using pip3 freeze, to add dependency to the container 
3. The netmiko app that you build should be inside a folder called "netmiko-lab" and use the code from the Task 2
4. Use the correct network configuration to make the code work from the container. 
- Please commit as many times as you feel like including message about what you are trying to do or fix.


## License

MIT
