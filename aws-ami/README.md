# Packer, Ansible 기반의 AMI(Amazon Machine Image) 생성

* Packer의 Provision 도구로 Ansible을 사용성
  * Ansible: 기본 AMI 이미지에 Provision 수행
  * Packer: Provision 된 AMI 이미지를 새로운 이미지로 생성 후 AWS 계정에 업로드

```shell
packer build \
-var 'aws_access_key="AWS_ACCESS_KEY"' \
-var 'aws_secret_key="AWS_SECRET_KEY"' \
aws_centos8.json
```
