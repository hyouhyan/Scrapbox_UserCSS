<?php

// ./cssディレクトリ内のファイル一覧を取得
$css_files = glob('./css/*.css');

// 出力
header('Content-Type: text/css');
foreach ($css_files as $css_file) {
    echo "@import '{$css_file}';\n";
}
