# Centos6/7 install mysql5.6

mysql5.6 ansible-playbook

#ansible获取内置变量信息
[root@linux-node1 ~]# ansible 192.168.56.12 -m setup|grep ansible_distribution
        "ansible_distribution": "CentOS",
        "ansible_distribution_file_parsed": true,
        "ansible_distribution_file_path": "/etc/redhat-release",
        "ansible_distribution_file_variety": "RedHat",
        "ansible_distribution_major_version": "7",
        "ansible_distribution_release": "Core",
        "ansible_distribution_version": "7.5.1804",



[root@linux-node1 ~]# ansible 192.168.56.12 -m setup|grep ansible_distribution_major_version
        "ansible_distribution_major_version": "7",



