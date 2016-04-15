+ Distance Class
1.构造函数    
    1) distance(String vectorFile，boolean loadcache)  参数loadcache为false加载非二进制词向量文件，true时加载二进制对象文件，vectorFile为文件路径   
    2) distance(int cn,String vectorfile，boolean loadcache)  参数cn为返回结果个数，localdcache参数意义同上。
2.function    
    1) float calculateWords(String word1,String word2) 返回word1与word2的Cosin Distance   
    2) void calculateDistance(String word)  计算word 的cosin  distance集合,默认为40个,如果构造函数使用cn,则返回cn个,结果集由函数 Map<String,Float> getResultMap()返回,格式为map函数   
    3) Map<String,Float> calculateDistance(float distValue,String word) 计算word的cosin distance值大于disvalue的集合,结果以map返回   
    4) void distanceAnalogy(String word1,String word2,String word3) 计算word1-word2=word3-word4中的word4.结果从Map<String,Float> getResultMap()返回,格式为map函数   
    5) void Convert2Binary(String path),将文本向量文件转为二进制对象存储, 存储到path。文件后缀为.dat(自己设定file.dat)   
    6) void KMeans(String file,int classes,boolean save_text),将加载的词向量文件进行K-Means聚类，file为结果文件，classes 聚类数，save_text以text保存，或以二进制对象保存（Map<String,Integer>对象）   
