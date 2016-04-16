+ 1.目录
----------
bin/	可执行文件目录   
corpus/	样本文件   
lib/	NLPIR-ICTCLAS分词词库&相关依赖   
linux/	不同linux内核的版本   
sdk/	模型计算jar包&相关接口说明   
libNLPIR.so	NLPIR-ICTCLAS分词动态库   
startup-poscbow.sh	POS-CBOW模型生成脚本   
startup-poskipgram.sh POS-Skip-gram模型生成脚本   

+ 2.整个项目执行过程包括
----------------------
1) 语料生成   
2) 语料学习   
3) 模型生成   
- 模型为：POS-CBOW和POS－Skip－Gram两个语言模型
----------------------------------------------   
1) startup-poscbow.sh为pos-cbow模型生成脚本   
2) startup-poskipgram为另一个语言模型生成脚本    

+ 3.执行方法
------------------
运行环境：Linux，JRE8
1) 将TXT文本放入corpus目录    
2) 替换bin目录下相应版本linux的可执行文件word2vec和当前目录下的libNLPIR.so两个文件    
3) 执行相应模型脚本，完成2中整个项目执行过程    
   sample：./startup-poscbow.sh
   
+ 4.授权问题
-------------------
   授权文件在lib/Data目录下，请确保授权有效。
