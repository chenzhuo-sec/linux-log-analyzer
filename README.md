# Linux Log Analyzer

一个基于 Shell 的 Linux 日志安全分析工具，用于分析 SSH 登录失败日志、检测异常 IP，并生成简单安全分析报告。

---

# 项目介绍

本项目通过 Shell 脚本对 Linux 系统日志进行自动化分析，能够快速统计 SSH 登录失败次数、提取高频攻击 IP，并输出分析结果。

适用于：

- Linux 运维学习
- 网络安全入门
- 日志分析练习
- 安全运维实验

---

# 功能特点

- SSH 登录失败次数统计
- 攻击 IP 自动提取
- 最近失败记录查看
- 自动生成分析结果
- Shell 自动化分析

---

# 技术栈

- Shell
- Linux
- grep
- awk
- sed

---

# 项目结构

```text
linux-log-analyzer
│
├── analyze.sh      # 主分析脚本
├── sample.log      # 示例日志文件
├── result.txt      # 分析结果
└── README.md
```

---

# 使用方法

## 1. 克隆项目

```bash
git clone httpsgithub.com你的用户名linux-log-analyzer.git
```

---

## 2. 进入项目目录

```bash
cd linux-log-analyzer
```

---

## 3. 运行脚本

```bash
bash analyze.sh
```

---

# 示例日志

```text
Jun 10 100001 server sshd[123] Failed password for root from 192.168.1.100 port 22 ssh2
Jun 10 100102 server sshd[124] Failed password for admin from 192.168.1.101 port 22 ssh2
```

---

# 输出结果示例

```text
====== Linux 日志分析工具 ======

1. SSH 登录失败次数统计
5

2. 攻击 IP 统计
3 192.168.1.100
1 192.168.1.101
```

---

# 核心实现

项目主要通过：

- grep 过滤 SSH 登录失败日志
- awk 提取攻击 IP
- sort 与 uniq 统计频率
- Shell 自动化输出分析结果

实现基础日志安全分析功能。

---

# 后续优化方向

未来计划增加：

- 异常 IP 自动封禁
- 多日志文件分析
- Web 可视化界面
- Docker 容器部署
- 实时日志监控

---

# 项目截图

![image-20260514234015567](C:\Users\29143\AppData\Roaming\Typora\typora-user-images\image-20260514234015567.png)

运行后会自动生成：

```text
result.txt
```

分析结果文件。

---

# 适用环境

- Ubuntu
- CentOS
- Kali Linux

---

# 作者

Chen Zhuo

网络安全  Linux 运维方向学习者