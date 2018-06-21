DevOps With EC2 Container
================================================================


In this tutorial, we will use [AWS Cloud9](https://aws.amazon.com/cloud9/) to create and co-work environment, [AWS CodePipeline](https://aws.amazon.com/codepipeline/) to create an automated deployment and integration pipeline, and finally deploy on [AWS ECS – EC2 Container](https://aws.amazon.com/tw/ecs/) type.

![1.png](/ECS-101-DevOps_with_EC2_Container/images/1.png)


## Prerequisites
1. Sign-in a AWS account, and make sure you have select N.Virginia region.


## Lab tutorial
### Create a repository with AWS CodeCommit
1.1. 	Open AWS Manage Console and Sign in.

1.2. 	On the Service Menu, choose **CodeCommit** service under Developer Tools.

1.3. 	If you are first time use this service, click **Get started**, if not, click **Create Repository**.

1.4. 	Enter **workshop-commit** as the **Repository name**.

1.5. 	Click **Create Repository**.

1.6. 	Click **Skip**.

1.7. 	Notice the clone command under **Steps to clone your repository**.

1.8. 	Click **Close**.

![2.png](/ECS-101-DevOps_with_EC2_Container/images/2.png)


### Create a cloud-based IDE with AWS Cloud9.

2.1. 	On the Service Menu, choose **Cloud9** service under Developer Tools.

2.2. 	Click **Create environment**.

2.3. 	Type **workshop-cloud9** as the **Name**.

2.4. 	Click **Next step**.

2.5. 	Let all configure option default, click **Next step**.

2.6. 	Click **Create environment**.

2.7. 	Now you will see the Cloud9 IDE is open, wait until it done.


### Integrate Cloud9 With CodeCommit and Push First Code

3.1. 	At the bottom of page, you will see the console tab.

![3.png](/ECS-101-DevOps_with_EC2_Container/images/3.png)

3.2. 	Copy the follow command and paste to console.

	$ git config --global credential.helper '!aws codecommit credential-helper $@'
	$ git config --global credential.UseHttpPath true
	$ git clone https://github.com/ecloudvalley/Continuous-Integration-and-Continuous-Delivery-with-EC2-Container.git
	$ . Continuous-Integration-and-Continuous-Delivery-with-Fargate/ECS-101-DevOps_with_Fargate/RunFirst.sh

3.3. 	If you run successful, you will see a folder name **workshop-codecommit** at left navigation panel.

![4.png](/ECS-101-DevOps_with_EC2_Container/images/4.png)

3.4. 	Go to **AWS CodeCommit** page, and you will see source code are already push by bash script.


### Create a ECR Repository

4.1.    Back to ECS service page.

4.2. 	Click **Repositories** under Amazon ECR at left panel.

4.3. 	If you are first created, click **Get started**, else, click **Create repository**.

4.4. 	Type **workshop-ecr** as the Repository name.

4.5. 	Click **Next step**.

4.6. 	Click **Done**.

4.7. 	Note the **Repository URI** and copy it.
