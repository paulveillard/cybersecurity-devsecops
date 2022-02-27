# Setting up Jenkins

Once the vagrant setup is done, you can visit http://http://10.0.1.11:8080/

1. You will be prompted to provide initial password. Follow the below setups to get the password
	
	```bash
	# SSH into jenkins box, ensure you are DevSecOps Studio directory.
	$ vagrant ssh jenkins
	
	# Get the initial admin password
	$ sudo cat /var/lib/jenkins/secrets/initialAdminPassword
	e7352877844e454786b9c0bf11f292a1
	
	```

2. Click on `Install Suggested Plugins`, this will take a while.
3. Next, you will be asked to create admin account, fill jenkins in all fields and use jenkins@example.com as email in the last field.
4. Done, start using jenkins.