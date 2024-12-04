# robosys2024
ロボットシステム学授業用

[![test](https://github.com/7aKRe0/robosys2024/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/7aKRe0/robosys2024/actions/workflows/test.yml)

## 概要
このプログラムは、BMI（Body Mass Index）を計算し、結果に応じた健康状態の評価（低体重、普通体重、肥満など）を表示する

## 導入方法
初めにGitHubからリポジトリをクローンする
```
$ git clone https://github.com/7aKRe0/robosys2024.git
$cd robosys2024
```

次に必要な権限を付与する
```
chmod +x bmi
```

## 使い方
以下は、BMI計算を実行した際のサンプル入力と出力

## 標準的な使用例
入力例
```
echo -e "170 55" | ./bmi
```
出力例
```
19.03 標準値の範囲内(普通体重)
```

## 異常な入力例

入力は数値のみ対応
不正な入力があるとエラーが表示される

```
echo -e "abc 55" | ./bmi
エラー: could not convert string to float: 'abc'
```

```
echo -e "0 0" | ./bmi
エラー: 身長や体重は正の数である必要があります
```

```
echo -e " " | ./bmi
エラー: 身長(cm)と体重(kg)の2つの数値を入力してください
```

## 必要なソフトウェア
- Python

## テスト環境
- Ubuntu 22.04 LTS
- python
  - テスト済みバージョン:3.7~3.10
  
# 著作権・ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024
 
© 2024 Ryosuke Naka
