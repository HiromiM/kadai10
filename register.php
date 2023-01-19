<?php

session_start();
require_once('funcs.php');
loginCheck();

$bookname = $_POST['bookname'];
$comment  = $_POST['comment'];
$img = '';

// 簡単なバリデーション処理追加。
if (trim($bookname) === '' || trim($comment) === '') {
    redirect('index.php?error');
}

// ★★★★Macはimagesフォルダの書き込み権限を変更してください。★★★★
if ($_SESSION['post']['image_data'] !== "") {
    $img = date('YmdHis') . '_' . $_SESSION['post']['file_name'];
    file_put_contents("images/$img", $_SESSION['post']['image_data']);
}

//2. DB接続します
$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare('INSERT INTO gs_content_table(
                            title, content, img, date
                        )VALUES(
                            :bookname, :comment, :img, sysdate()
                        )');
$stmt->bindValue(':bookname', $title, PDO::PARAM_STR);
$stmt->bindValue(':comment', $content, PDO::PARAM_STR);
$stmt->bindValue(':img', $img, PDO::PARAM_STR);
$status = $stmt->execute(); //実行

//４．データ登録処理後
if (!$status) {
    sql_error($stmt);
} else {
    $_SESSION['select'] = [] ;
    redirect('index.php');
}
