# robosys2024
ロボットシステム学授業用
[![test](https://github.com/7aKRe0/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/7aKRe0/robosys2024/actions/workflows/test.yml)


## 何をするためのソフトウェアか
このソフトウェアは、BMI（Body Mass Index）を計算し、結果に応じた健康状態の評価（低体重、普通体重、肥満など）を表示するツール

## インストール方法
初めにGitHubからリポジトリをクローンする
```
$ git clone git@github.com:7aKRe0/robosys2024.git
```
クローン出来たらリポジトリのディレクトリに移動する
```
$cd robosys2024
```

## 使い方
以下のコマンドを実行して、BMI計算を開始する：
```
python3 bmi 
```
入力方法
身長を「cm」で入力
体重を「kg」で入力
結果としてBMIと評価が表示される

## 実行例
以下は、BMI計算を実行した際のサンプル入力と出力
入力例
```
身長(cm)を入力してください: 170
体重(kg)を入力してください: 55
```
出力例
```
身長: 170.0 cm
体重: 55.0 kg
BMI: 19.03
結果: 標準値の範囲内(普通体重)
```
入力は数値のみ対応
不正な入力があるとエラーが表示される
```
身長(cm)を入力してください: a
エラー:数値を正しく入力してください。
```
## 必要なソフトウェア
- Python
  - テスト済み:3.7~3.10

## テスト環境
- Ubuntu 20.04 LTS

## 作成者
* 中 良介
* 千葉工業大学未来ロボティクス学科所属
* uchuutarou114@gmail.com

# 著作権・ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
- © 2024 Ryosuke Naka
