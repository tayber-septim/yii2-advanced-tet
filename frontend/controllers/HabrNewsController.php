<?php

namespace frontend\controllers;
use Yii;
use GuzzleHttp\Client; // подключаем Guzzle
use yii\helpers\Url;

class HabrNewsController extends \yii\web\Controller
{
    public function actionIndex (){
        
        // создаем экземпляр класса
        $client = new Client();
        // отправляем запрос к странице Хабра
        $res = $client->request('GET', 'https://habrahabr.ru/');
        // получаем данные между открывающим и закрывающим тегами body
        $body = $res->getBody();
        // вывод страницы Хабра в представление
        return $this->render('index', ['body' => $body]);
    }
}