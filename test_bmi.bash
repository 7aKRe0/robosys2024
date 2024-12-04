#!/usr/bin/env bash
# SPDX-License-Identifier: BSD-3-Clause
# SPDX-FileCopyrightText: 2024 Ryosuke Naka <uchuutarou114@gmail.com>

# エラー関数
ng() {
    echo "エラー: ${1}行目のテストが失敗しました" >&2
    res=1
}

res=0

# 異常系テスト（数値以外の入力）
out=$(echo -e "abc\n65" | ./bmi)
[ $? -ne 0 ] || ng "$LINENO"
echo "${out}" | grep -q "エラー" || ng "$LINENO"

out=$(echo -e "170\nxyz" | ./bmi)
[ $? -ne 0 ] || ng "$LINENO"
echo "${out}" | grep -q "エラー" || ng "$LINENO"

# 空入力テスト
out=$(echo -e "\n" | ./bmi)
[ $? -ne 0 ] || ng "$LINENO"
echo "${out}" | grep -q "エラー" || ng "$LINENO"

# 正常系テスト
out=$(echo -e "170\n55" | ./bmi)
[ $? -eq 0 ] || ng "$LINENO"
echo "${out}" | grep -q "19.03 標準値の範囲内" || ng "$LINENO"

# 結果出力
[ "${res}" = 0 ] && echo "全てのテストが成功しました" || echo "テストに失敗しました"
exit $res

