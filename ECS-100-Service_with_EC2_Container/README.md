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

1.52. 	Back to ECS page, click **Task Definitions** at left panel.

1.53. 	Click **Create new Task Definition**.

1.54. 	Select **EC2**, and click **Next step**.

1.55. 	Type **workshop-task** as the Task Definition Name.

1.56. 	Select **None** as Task Role.

1.57. 	Select **default** as Network Mode.

1.58. 	Under the Task Size, Type **512** as Task memory, **256** as Task CPU.

1.59. 	Click **Add container**.

1.60. 	Type **workshop-container** as Container name.

1.13.	Back to ECS page, click **Action**, and Select **Create Service**.

![14.png](/ECS-100-Service_with_EC2_Container/images/14.png)

1.14. 	Choose **EC2** as Launch type.

1.15. 	Type **workshop-service** as the Service name.

1.16. 	In Number of tasks, enter **1**.

![15.png](/ECS-100-Service_with_EC2_Container/images/15.png)

1.17. 	Click **Next step**.

1.18. 	Under Load balancing, choose **Application Load Balancer**.

1.19. 	You will see a warning which mean you need to create ALB, click **EC2 Console**.

![16.png](/ECS-100-Service_with_EC2_Container/images/16.png)

1.74. 	Select **Create** under Application Load Balancer.

1.75. 	Type **workshop-ALB** as Name.

1.76. 	Under Availability Zones, choose the VPC you created previously, and select both

![17.png](/ECS-100-Service_with_EC2_Container/images/17.png)

1.77. 	Click **Next: Configure Security Settings**.

1.78. 	Click **Next: Configure Security Groups**.

1.79. 	Select **Create a new security group**.

1.80. 	Type **workshop-ALB-SG** as Security group name.

1.81. 	At Type part, Select **HTTP**.

1.82. 	At Source part, Select **Anywhere**.

1.83. 	Click **Next: Configure Routing**.

1.84. 	Type **workshop-TG** as the name.

1.85. 	Let other settings default.

1.86. 	Click **Next: Register Target**.

1.87. 	Click **Next: Review**.

1.88. 	Click **Create**.

1.89. 	When it created successfully, click **Close**.

1.90. 	Click **Security Groups** at left panel, find **Description** that write **ECS Allowed Ports**, and Select it.

![18.png](/ECS-100-Service_with_EC2_Container/images/18.png)

1.91. 	Click **Inbound** Tab.

1.92. 	Click **Edit**.

1.93. 	Click **Add Rule**.

1.94. 	Select **All traffic** as Type.

1.95. 	Select **Anywhere** as Source.

1.96. 	Click **Save**.

![19.png](/ECS-100-Service_with_EC2_Container/images/19.png)

1.97. 	Back to ECS create service page.

1.98. 	Click **Reload**.

![20.png](/ECS-100-Service_with_EC2_Container/images/20.png)

1.52. 	Select **workshop-ALB** as Load balancer name.

1.53. 	Under Container to load balance, click **Add to load balancer**.

1.54. 	At the Target group name, select **workshop-TG**.

![21.png](/ECS-100-Service_with_EC2_Container/images/21.png)

1.55. 	Click **Next step**.

1.56. 	Let option default, click **Next step**.

1.57. 	Click **Create Service**.

1.58. 	When it created Successfully, click **View Service**, and you can do next step.

### Verify the Service

2.1. Go to EC2 page, and click **Load Balancers**, then select the load balancer you created.

2.2. Copy the **DNS**, and paste to browser URL, and click **Enter**.

![24.png](/ECS-100-Service_with_EC2_Container/images/24.png)

2.3. If the service created successfully, you will see **It works!**.

![25.png](/ECS-100-Service_with_EC2_Container/images/25.png)


## Conclusion

Congratulations! You now have learned how to:

* Create **Amazon ECS** using **EC2 Container** type.




