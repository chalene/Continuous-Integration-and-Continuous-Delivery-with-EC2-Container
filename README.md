Continuous Integration and Continuous Delivery with AWS EC2 Container (Amazon ECS)
================================================================

## Why need DevOps Tool
Delivering new iterations of software at a high velocity is a competitive advantage in today’s business environment. The speed at which organizations can deliver innovation to customer and adapt changing markets is a standard to determined organizations will success or failure. That’s why continuous integration and continuous delivery are important.

Nowadays, many software can help you to make a DevOps flow. But you need to waste many times to maintain those infrastructures, and sometimes will occur some human errors. It not only increases cost, but also decrease your development times. AWS provide a set of flexible DevOps tool. It can easily to integrate with another AWS service and also third-party DevOps software. With those tools, you can quickly and easily to implement an automated deployment and integration pipeline for applications. All those tools are fully management.

## Scenario
In this tutorial, we will using AWS Elastic Container Service ([Amazon ECS](https://aws.amazon.com/ecs/)) which is a highly scalable, high-performance [container](https://aws.amazon.com/tw/what-are-containers/) orchestration service that supports Docker containers and allows you to easily run and scale containerized applications on AWS. Amazon ECS eliminates the need for you to install and operate your own container orchestration software, manage and scale a cluster of virtual machines, or schedule containers on those virtual machines.

After create Amazon ECS using EC2 Container type, we will code by using [AWS Cloud9](https://aws.amazon.com/cloud9/) which is a cloud-based integrated development environment (IDE) that lets you write, run, and debug your code with just a browser. Integrate AWS Cloud9 with [AWS CodeCommit](https://aws.amazon.com/codecommit/), use [AWS Codepipeline](https://aws.amazon.com/codepipeline/), [AWS CodeBuild](https://aws.amazon.com/codebuild/), and Amazon ECS to implement an automatic CI/CD workflow with Container.

Step by step:
1. [Service_with_EC2 Container](https://github.com/ecloudvalley/Continuous-Integration-and-Continuous-Delivery-with-EC2-Container/tree/master/ECS-100-Service_with_EC2_Container)
2. [DevOps_with_EC2 Container](https://github.com/ecloudvalley/Continuous-Integration-and-Continuous-Delivery-with-EC2-Container/tree/master/ECS-101-DevOps_with_EC2_Container)
