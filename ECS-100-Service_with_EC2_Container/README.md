Service With EC2 Container
================================================================
## Lab tutorial
### Create a Cluster, Task Definition, and Service Using Fargate

1.1. 	On the Service Menu, choose **Elastic Container Service** under Compute.

1.2. 	Click **Get started**.

1.3. 	Click **Cancel**.

1.4. 	If you see this page, it means that you can do next.

![9.png](/ECS-100-Service_with_EC2_Container/images/9.png)

1.5. 	Click **Create Clusters**.

1.6. 	Select **Networking only**, and click **Next step**.

1.7. 	Type **workshop-ecs** as the Cluster name.

1.8. 	Click **Create VPC**.

1.9. 	Create your own CIDR which not affect others VPC.

> In ECS – EC2 Container type, you should choose and manage your EC2 Cluster type, if you want it to scale with demand, you need to set Auto Scaling additionally. You also need to consider your EC2 instance’s CPU and memory are enough to your task.

1.10. 	Click **Create**.

1.11. 	When it created successfully, click **View Clusters**.

1.12. 	If you see the cluster’s status is **ACTIVE**, you can do next step.

![10.png](/ECS-100-Service_with_EC2_Container/images/10.png)

1.13.	Click **Repositories** under Amazon ECR at left panel.

1.14. 	If you are first created, click **Get started**, else, click **Create repository**.

1.15.	Type **workshop-ecr** as the Repository name.

1.16.	Click **Next step**.

1.17.	Click **Done**.

1.18.	Note the **Repository URI**.

![11.png](/ECS-100-Service_with_EC2_Container/images/11.png)
