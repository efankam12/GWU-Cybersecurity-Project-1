## Automated ELK Stack Deployment

This Repository will hold Linux scripts, Network diagram along with Ansible play-book from azure virtual lab. 

![Network Diagram] (https://github.com/efankam12/GWU-Cybersecurity-Project-1/blob/main/Diagrams/Topology.png)

 These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the code file may be used to install only certain pieces of it, such as Filebeat.

  ![Elk Playbook] (https://github.com/efankam12/GWU-Cybersecurity-Project-1/blob/main/Ansible/Install-elk.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

* A load balancer would protect and assist when a website is receiving a=large amount of traffic. They also protect against attacks such as Denial of service. 

* A Jump-Box is another method of securing a virtual network. It provides additional layer of protection. The Jump box is the only method to get access to the other virtual machines. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files, logs and system metrics.

* Filebeat gathers data about the file system. It is used to detect and gather information when changes occurred to important files.

* Metricbeat records metrics to about a computer performance and usage such as memory disk, uptime and CPU. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Web-1    | Server   | 10.0.0.7   | Linux            |
| Web-2    | Server   | 10.0.0.6   | Linux            |
| ELK      | Server   | 10.2.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

* 96.241.92.249

Machines within the network can only be accessed by the Jump-Box.

* I allowed the jump-box to have access to my ELK virtual Machine. The IP address is 10.0.0.1

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
| Elk      | No                  | 10.0.0.4             |
| Web-1    | No                  | 10.0.0.7             |
| Web-2    | No                  | 10.0.0.6             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

* Automating with Ansible allows us to work efficiently. Ansible automated the configuration steps that we would have done manually to configure another device, which can be tedious

The playbook implements the following tasks:

* install Docker
* Install Python-pip
* Install docker python module
* Download and start a docker ELK container with the ports, 5601, 9200, 5044

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![docker ps](https://github.com/efankam12/GWU-Cybersecurity-Project-1/blob/main/Ansible/docker%20ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

* Web-1 : 10.0.0.7
* Web-2 : 10.0.0.6

We have installed the following Beats on these machines:

* Filebeat
* Metricbeat

These Beats allow us to collect the following information from each machine:

* Filebeat is used to collect system and event log data that an administrator can use and monitor the network.

* Metricbeat is another tool used to monitor virtial devices and machines. Metricbeat monitor the services currently running on the web server. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
* Copy the install-elk file to the Ansible container folder at /etc/ansible/files/.
* Update the /etc/ansible/hosts file to include ELk server ip address
* Run the playbook, and navigate to install-elk.yml ( http://[the ELK VM IP]:5601/app/kibana ) to check that the installation worked as expected.


_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

* First the user would need to navigate to /etc/ansible/ directory. Once there, they would run the following command: sudo nano hosts and edit the file by adding the following: [elk], then add the ELK virtual machine IP address with the following ansible_python_interpreter=/usr/bin/python3. Final save your work by pressing CTRL+X.

* Still in the same directory, run the following command: sudo nano ansible.cfg. Then run sudo ansible-playbook install-elk.yml
