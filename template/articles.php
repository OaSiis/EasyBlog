<?php include __DIR__.'/_header.php'; ?>

<?php
$i = 0;
foreach ($articles as $article) {
    if (0 === $i%3)
        echo '<div class="row">';

    echo '<article class="col-xs-12 col-sm-6 col-md-4 col-lg-4">';
    echo '<header>';
    echo '<h1><a href="/article.php?id='.$article['id'].'">'.$article['title'].'</a></h1>';
    echo '<img title="'.$article['title'].'" alt="'.$article['title'].'" src="'.$article['image'].'">';
    echo '<small>Written by '.$article['user_id'].' on '.$article['created_at'].'</small>';
    echo '</header>';
    echo '<div class="content">';
    echo '<p>'.$article['content'].'</p>';
    echo '</div>';
    echo '<footer>';
    echo '<p>Posted in category: <a href="/article?id='.$article['category_id'].'">'.$article['category_id'].'</a></p>';
    echo '<p><a href="/tag?id='.$article['category_id'].'"><span class="label label-primary">Primary</span></a></p>';
    echo '</footer>';
    echo '</article>';

    if (2 === $i%3)
        echo '</div>';
    $i++;
}
?>


<?php include __DIR__.'/_footer.php'; ?>