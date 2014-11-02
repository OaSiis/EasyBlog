<?php
/**
 * @author Thibaud BARDIN (https://github.com/Irvyne).
 * This code is under MIT licence (see https://github.com/Irvyne/license/blob/master/MIT.md)
 */

require __DIR__.'/_header.php';


if (!empty($_GET['id'])) {
    $id = (int) $_GET['id'];
    $article = getArticle($link, $id);
    if (!$article) {
        header('Location: index.php');
    }
} else {
    header('Location: index.php');
}

$homeAdmin = [
    'isAdmin' => isAdmin(),
];
$homeConnected = isConnected();

$homeSession = $_SESSION;

$twig = new Twig_Environment($loader,[
//'cache' => null,
]);

echo $twig->render('article.html.twig', [
    'article' => $article,
    'homeAdmin' => $homeAdmin,
    'homeConnected' => $homeConnected,
    'homeSession' => $homeSession,

]);
