# Beyond Compare for [TitanIDE](https://www.cloudtogo.cn/product-TitanIDE)

This is a Dev Tool template Beyond Compare for [TitanIDE](https://www.cloudtogo.cn/product-TitanIDE)

## Clone this repo to a [TitanIDE](https://www.cloudtogo.cn/product-TitanIDE) Template Maker workspace

```bash
git clone https://github.com/titanide/template-devtool-bcompare.git

cd template-devtool-bcompare

make

# import user and password

# user: admin
# password: passw0rd

```

```bash
 make
--2024-04-23 16:36:16--  https://www.scootersoftware.com/bc_icon.png
正在解析主机 www.scootersoftware.com (www.scootersoftware.com)... 72.32.90.251
正在连接 www.scootersoftware.com (www.scootersoftware.com)|72.32.90.251|:443... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度： 8235 (8.0K) [image/png]
正在保存至: “icon.png”

icon.png                               100%[===========================================================================>]   8.04K  --.-KB/s    用时 0s    

2024-04-23 16:36:17 (87.3 MB/s) - 已保存 “icon.png” [8235/8235])

2024-04-23T16:36:17 info workdir: /home/ide/workspace/vscode-c/beyond-compare
2024-04-23T16:36:17 info Start to build with  ...
2024-04-23T16:36:17 info Already contains credential for user admin in titan.hub:5000, if you want to update it, pleas input with force argument, e.g. make login force=true 
2024-04-23T16:36:17 info Building container image on TitanIDE ...
2024-04-23T16:36:17 info Configuring Kaniko
Current index 0 with value --cache --build-arg
Current index 1 with value --build-arg from_hub=titan.hub:5000/titanide
Current index 3 with value --build-arg from_tag=v20240308-332164d
Current index 5 with value --build-arg app_name=beyond-compare
Current index 7 with value --build-arg app_version=v20240423-bc443d6
Current index 9 with value --dockerfile=Dockerfile --destination=titan.hub:5000/test/beyond-compare:v20240423-bc443d6
Current index 10 with value --destination=titan.hub:5000/test/beyond-compare:v20240423-bc443d6 --insecure
Current index 11 with value --insecure --insecure-pull
Current index 12 with value --insecure-pull --skip-tls-verify
Current index 13 with value --skip-tls-verify 
2024-04-23T16:36:17 info /home/ide/workspace/vscode-c/beyond-compare/icon.svg
2024-04-23T16:36:17 info icon: 
2024-04-23T16:36:17 info /home/ide/workspace/vscode-c/beyond-compare/icon.png
2024-04-23T16:36:17 info icon.svg exist
2024-04-23T16:36:17 info icon: /home/ide/workspace/vscode-c/beyond-compare/icon.png

... (省略)

INFO[0147] Taking snapshot of full filesystem...        
INFO[0147] Pushed titan.hub:5000/test/beyond-compare/cache@sha256:258407cd32c7c3b1b8d49dda0b57ea9888f85b76228866a3442aee35845bcb2f 
INFO[0165] Pushing layer titan.hub:5000/test/beyond-compare/cache:67df3bb35d4497f86e07370e2870f8d27a663e2dc8c65762198e91228e5f1d5d to cache now 
INFO[0165] Pushing image to titan.hub:5000/test/beyond-compare/cache:67df3bb35d4497f86e07370e2870f8d27a663e2dc8c65762198e91228e5f1d5d 
INFO[0166] Pushed titan.hub:5000/test/beyond-compare/cache@sha256:d20ad4ceac3a13432cfef89eff5687da4ff8a9971b726a0f2d9e94244609d063 
INFO[0166] Pushing image to titan.hub:5000/test/beyond-compare:v20240423-bc443d6 
INFO[0169] Pushed titan.hub:5000/test/beyond-compare@sha256:9fe0c2cdd6e0c3bba5c1da1313106498aa4d07388b43440df894dd16a22113c5 
2024-04-23T14:38:57 info build phase: 
2024-04-23T14:38:57 info pushed titan.hub:5000/test/beyond-compare:v20240423-bc443d6
```

## Create template

Create a new template using the image that above (titan.hub:5000/test/beyond-compare:v20240423-bc443d6)

![image](https://github.com/titanide/template-devtool-bcompare/assets/6748475/0212cf6f-9b6b-46e6-acd2-dc31226278b4)

![image](https://github.com/titanide/template-devtool-bcompare/assets/6748475/9ced7694-a1ce-46aa-9e7c-e39bcc27ff35)


Then you will see a new template is created

![image](https://github.com/titanide/template-devtool-bcompare/assets/6748475/9532200f-471e-4b9e-8830-5c509065bb61)

## Create a new project using the new template

![image](https://github.com/titanide/template-devtool-bcompare/assets/6748475/1ef4a35c-ab9c-4bc2-b0ff-257361e8880b)

![image](https://github.com/titanide/template-devtool-bcompare/assets/6748475/889c5531-5d87-49ae-9fab-4c7fc3646694)


