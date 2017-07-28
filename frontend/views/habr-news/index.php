<?php
/* @var $this yii\web\View */
use frontend\models\HabrNewsModel;
use yii\widgets\ListView;
use yii\data\ActiveDataProvider;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
?>
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10">

                 <?php
                    $dataProvider = new ActiveDataProvider([
                        'query' => HabrNewsModel::find()->orderBy('tittle DESC'),
                        'pagination' => [
                            'pageSize' => 20,
                        ],
                    ]);
                     
                    echo ListView::widget([
                        'dataProvider' => $dataProvider,
                        'itemView' => '_list',
                    ]);
                ?>

            </div>
        </div> 
    </div>
</div>
