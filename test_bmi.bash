# SPDX-License-Identifier: BSD-3-Clause
# SPDX-FileCopyrightText: 2024 Ryosuke Naka <uchuutarou114@gmail.com>


ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

### bmiコマンドへのテスト ###

# 正常系: 身長170cm、体重55kg
out=$(echo -e "170\n55" | ./bmi)
expected="19.03 標準値の範囲内(普通体重)"
[ "${out}" = "${expected}" ] || ng "$LINENO"

# 数値以外の入力（身長に文字列）
out=$(echo -e "abc\n55" | ./bmi 2>&1)
echo "${out}" | grep -q "エラー: could not convert string to float" || ng "$LINENO"

# 数値以外の入力（体重に文字列）
out=$(echo -e "170\nxyz" | ./bmi 2>&1)
echo "${out}" | grep -q "エラー: could not convert string to float" || ng "$LINENO"

# 空入力
out=$(echo -e "\n" | ./bmi 2>&1)
echo "${out}" | grep -q "エラー: 身長(cm)と体重(kg)の2つの数値を入力してください" || ng "$LINENO"

# 身長が0
out=$(echo -e "0\n55" | ./bmi 2>&1)
echo "${out}" | grep -q "エラー: 身長や体重は正の数である必要があります" || ng "$LINENO"

# 体重が0
out=$(echo -e "170\n0" | ./bmi 2>&1)
echo "${out}" | grep -q "エラー: 身長や体重は正の数である必要があります" || ng "$LINENO"

[ "$res" -eq 0 ] && echo "全てのテストが成功しました" || echo "テストに失敗しました"
exit "$res"
