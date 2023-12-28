#!/bin/bash

# ./cssディレクトリ内のファイル一覧を取得
css_files=$(ls ./css)

# 一回消す
rm importall.css

# 出力ファイルの作成
touch importall.css

# 各cssファイルをimportall.cssにリダイレクト
for css_file in $css_files; do
    echo "@import \"./css/$css_file\";" >> importall.css
done