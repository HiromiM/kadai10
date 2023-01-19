<?php
session_start();
require_once('funcs.php');
loginCheck();

$bookname = '';
$comment = '';

if (isset($_SESSION['post']['bookname'])) {
    $bookname = $_SESSION['post']['bookname'];
}

if (isset($_SESSION['post']['comment'])) {
    $comment = $_SESSION['post']['comment'];
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>書籍アプリ</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一入力</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="login.php">ログイン</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="logout.php">ログアウト</a></div>
                
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->

    <?php if (isset($_GET['error'])) : ?>
        <p class='text-danger'>記入内容を確認してください。</p>
　　<?php endif ?>

    <form method="post" action="confirm.php" enctype="multipart/form-data">
    <form method="************" action="*************">
        
        <div class="mb-3">
            <fieldset>
            <legend>書籍アプリ</legend>

            <!-- <label>書籍名：<input type="text" name="bookname"></label><br> -->
            
               
            <label for="bookname" class="form-label">書籍名：</label>
            <input type="text" class="form-control" name="bookname"
            id="bookname" aria-describedby="bookname"
            value="<?= $bookname ?>">
            <div id="emailHelp" class="form-text">※入力必須</div>
        </div>
               
        
            <label for="title" class="form-label">画像:</label>
            <input type="file" name="img">
        </div>
        <div class="mb-3">
            <!-- <label>レビュー:</label><br> -->
            <label for="comment" class="form-label">レビュー：</label>
           
            <textArea type="text" class="form-control" name="comment"
            id="comment" aria-describedby="comment"
            rows="4" cols="40"><?= $comment ?></textArea>
            
                <!-- <div class="mb-3">
            <label><textArea name="comment" rows="4" cols="40"></textArea></label><br> -->

            <input type="submit" value="投稿する">
            </fieldset>
        </div>
    </form>
    
    <!-- Main[End] -->


</body>

</html>
