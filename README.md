# 利用Actions编译openwrt

## 相关的库

[源码：lede](https://github.com/coolsnowwolf/lede)  
[fork自AutoBuild-OpenWrt](https://github.com/esirplayground/AutoBuild-OpenWrt)  
[参考P3TERX](https://github.com/P3TERX/Actions-OpenWrt)

---

## 说明

主要是一些编译过程中的自定义，源码和actions参考以上几位的库  

- 其中代码主要复制自 AutoBuild-OpenWrt

- 安装完成后使用 192.168.5.1 访问

- 默认帐号：root，密码：无密码，进入系统后自行设置

---

## 使用

*以下以ac2100的编译来说明*

.github/workflows/Build.yml的env参数说明  

|  属性   | 说明  |
|  ----  | ----  |
| REPO_URL  | 源码，默认为lede的 |
| REPO_BRANCH  | 源码拉取的分支 |
| CONFIG_FILE  | 对应需要生成的固件配置，如ac2100就设置为 config/redmi_ac2100.config。不同的固件对应的配置不同 |
| DIY_START_SH  | 第一个shell脚本，一般用于安装依赖和插件。比如openclash、ssrp+。注意脚本中引用的依赖，如果上游依赖有问题会导致编译不成功。 |
| DIY_END_SH  | 第二个shell脚本，一般用于设置themen、ip之类的。这个脚本影响的是你的页面样式、访问ip等，编译完成后需要先看里面的配置再访问。 |
| TZ  | 时区，基本不用关注。默认采用中国上海的时区。 |

---

## 一些注意点

- DIY1的依赖和包要注意上游是否能正常编译，我在编译过程中遇到过依赖出问题导致的失败

- ac2100等性能比较垃圾的固件，不要安装太多app，比如clash等可以考虑使用ssrp+来替换。或者直接使用padavan的固件


测试代理提交