<?php

namespace frontend\controllers;


class HabrNewsController extends \yii\web\Controller {

     public function actionIndex()
    {
        return $this->render('index');
    }
}