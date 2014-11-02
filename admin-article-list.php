<?php
/**
 * @author Thibaud BARDIN (https://github.com/Irvyne).
 * This code is under MIT licence (see https://github.com/Irvyne/license/blob/master/MIT.md)
 */

require __DIR__.'/_header.php';


$articles = getArticles($link);
$twig = new Twig_Environment($loader,[
//'cache' => null,
]);

$homeAdmin = [
    'isAdmin' => isAdmin(),
];
$homeConnected = isConnected();

$homeSession = $_SESSION;


echo $twig->render('admin-article-list.html.twig', [
    'articles' => $articles,
    'homeAdmin' => $homeAdmin,
    'homeConnected' => $homeConnected,
    'homeSession' => $homeSession,
]);
