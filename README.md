# Splat Scene Detect

任天堂が発売しているSplatoon2の画面キャプチャが、どのシーンを示しているのか推定するモデルを作成します。

これを利用し、録画内容から試合画面のみを切り出すような編集の自動化を可能にします(可能にしたいです)

# 元データ

[GitHub kamiyaowl/splat-scene-dataset](https://github.com/kamiyaowl/splat-scene-dataset)

2018/11/18時点で17クラスに分類した17043枚の画像を使用しています。

画像サイズは640*360、jpeg形式で格納されています。

多少データに偏りがありますが、ひとまずはいいとします。**かなり良くないですが...。**(追加データをご提供いただける方はぜひPRください...)

# 学習

詳しい処理は [splat-scene-detect/learn.py](https://github.com/kamiyaowl/splat-scene-detect/blob/master/learn.ipynb) を参照してください。(PC向けのGitHubページであればipynbのプレビューが表示できます)

現在の実装ではVGG16を特徴抽出機として利用し、全結合層を再学習しています。

# 環境

Tensorflow-gpu(1.8.0)  + Keras(2.2.4)で実装しています。

多少余計なものまでインストールされていますが、仮想環境の`$ pip freeze`を`requirements.txt`に出力してありますのでご参照ください。

# 参考

* [PythonとKerasによるディープラーニング](https://book.mynavi.jp/ec/products/detail/id=90124)
* [Keras Tutorial : Fine-tuning using pre-trained models](https://www.learnopencv.com/keras-tutorial-fine-tuning-using-pre-trained-models/)
* [VGG16を転移学習させて「まどか☆マギカ」のキャラを見分ける](https://qiita.com/God_KonaBanana/items/2cf829172087d2423f58)