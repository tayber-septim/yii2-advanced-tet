<?php
namespace console\controllers;
use yii\console\Controller;


// command to start script - php yii get-habr-news/go
 
Class GetHabrNewsController extends Controller
{
    public function actionGo(){
            $con=mysqli_connect("localhost","root","1111","yii");
        mysqli_query($con,"set names 'utf8'");
        // Check connection
        if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
            }
        header('Content-Type: text/html; charset=utf8');   

         function print_arr($arr){
            echo '<pre>' . print_r($arr,true) . '</pre>';
        }

        $habr = 'https://habrahabr.ru/';
        $file = file_get_contents($habr);
        $doc = \phpQuery::newDocument($file);
        
        foreach ($doc->find('.post_teaser') as $article) {
           
            $article = pq($article);
            $link = $article->find('.post__title_link')->attr('href');
            // var_dump($link);
            // echo "</br>";
            $soloNews = file_get_contents($link);
            
            $data = \phpQuery::newDocument($soloNews);

            $tittle = $data->find('.post__title-text')->text();
           
            $content = $data->find('.post__header h1')->text();

            $img = $data->find('.js-mediator-article img')->attr('src');
            
           
            $sql = mysqli_query($con ,"INSERT INTO `habrNews` (`tittle`,`content`,`link`, `image`) VALUES ('$tittle', '$content', '$link', '$img')"); 


            //Если вставка прошла успешно
            if ($sql) {
                echo "<p>Данные успешно добавлены в таблицу.</p>";
            } else {
                echo "<p>Новость уже существует =)</p>";
            }
               
           
        } 
    }
}