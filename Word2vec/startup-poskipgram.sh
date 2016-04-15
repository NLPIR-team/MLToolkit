echo "开始执行语义库构建任务..."
java -Dfile.encoding=utf-8 -jar bin/CorpusBuilder.jar -output train_file -path ./corpus/
echo "进入POS-CBOW模型学习.."
./bin/word2vec -train train_file -output model.bin -cbow 0 -size 300 -window 8 -negative 1 -hs 1 -sample 1e-4 -threads 24 -binary 0 -iter 15
echo "进入POS-CBOW模型生成"
java -jar bin/ModelBuilder.jar -model ./model.bin corpus-skipgram.dat
