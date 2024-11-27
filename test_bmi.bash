# SPDX-FileCopyrightText: 2024 Ryosuke Naka <uchuutarou114@gmail.com>


# エラー関数
ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 異常系テスト（数値以外の入力）
out=$(echo -e "abc\n65" | python3 bmi)
[ $? -ne 0 ] || ng "$LINENO"
echo "${out}" | grep -q "エラー" || ng "$LINENO"

out=$(echo -e "170\nxyz" | python3 bmi)
[ $? -ne 0 ] || ng "$LINENO"
echo "${out}" | grep -q "エラー" || ng "$LINENO"

# 空入力テスト
out=$(echo -e "\n" | python3 bmi)
[ $? -ne 0 ] || ng "$LINENO"                                                                                            echo "${out}" | grep -q "エラー" || ng "$LINENO"

# 結果出力
[ "${res}" = 0 ] && echo OK
exit $res
