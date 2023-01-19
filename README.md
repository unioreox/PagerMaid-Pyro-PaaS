# PagerMaid-Pyro-Paas  
## 部署步骤  
1.随意找一个支持Docker部署的PaaS容器  
2.将本项目克隆到本地  
`git clone https://github.com/unioreox/PagerMaid-Pyro-PaaS.git`  
  
3.在本地使用Python按照提示生成Session文件  
`python3 gensession.py`  
注：请注意保护session文件安全，通过此文件可以对Telegram账号执行任何操作
  
4.有两种方法  
&nbsp&nbsp1)本地构建Docker镜像并Push到容器托管  
&nbsp&nbsp2)创建Github私有仓库，通过容器绑定Github进行部署  
  
5.Enjoy
