# ESurfingDialer-onekey
本项目用于在 `Windows` 下一键启动[ESurfingDialer](https://github.com/Rsplwe/ESurfingDialer)

# 使用方法

下载压缩包，解压运行 `Start_ESurfingDialer.bat`,输入账号密码即可完成认证

#### 提供以下下载方式：
- [123云盘](https://www.123865.com/s/GDD4Td-Q4Wp3)
- [iCloud](https://www.icloud.com/iclouddrive/035UsldqSksKcnTcQ7keddHuw#ESurfingDialer-One-Click-Windows-1.8.0)
- [Github Release](https://github.com/dogliu666/ESurfingDialer-One-Click-Windows/releases/tag/Latest)

#### 首次启动需要输入账号密码，后续启动不需要输入账号密码

若在开始运行时遇到
```
错误:加载主类 com.rsplwe.esurfing.DialerApp 时出现 LinkageError
java. lang. UnsupportedClassVersionError: com/rsplwe/esurfing/DialerApp has been compiled by a more recent version
of the Java Runtime (class file version 67.0), this version of the Java Runtime only recognizes class file versions up
to 65.0
```
请修改`Start_ESurfingDialer.bat`第5行`set JAVA_HOME=.\jre`的位置，更改为更新的Java版本

#### 若要修改账号密码，修改config.txt后重启脚本即可

# 免责声明

- 本仓库代码仅供学习参考，用于自动化程序的启动，并无任何侵权内容。
- 请勿在任何公开场合宣传本脚本
