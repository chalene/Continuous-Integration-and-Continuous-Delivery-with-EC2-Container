git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/workshop-commit
cp -R ./Continuous-Integration-and-Continuous-Delivery-with-EC2-Container/ECS-101-DevOps_with_EC2_Container/* ./workshop-commit
rm -rf Continuous-Integration-and-Continuous-Delivery-with-EC2-Container
cd workshop-commit
rm -rf images
git add .
git commit -m “workshop-bash”
git push