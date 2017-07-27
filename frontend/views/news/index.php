<?php
/* @var $this yii\web\View */

 
use frontend\models\NewsModel;
use frontend\models\CategoriesModel;
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
                        'query' => NewsModel::find()->orderBy('tittle DESC'),
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

             <div class="col-md-2" data-sticky_column>
                <div class="primary-sidebar">
                    <aside class="widget border pos-padding">
                        <h3 class="widget-title text-uppercase text-center">Categories</h3>
                        <ul>

                            <?php
                                $dataCategories = new ActiveDataProvider([
                                    'query' => CategoriesModel::find()->orderBy('tittle DESC'),
                                    'pagination' => [
                                        'pageSize' => 20,
                                    ],
                                ]);
                                 
                                echo ListView::widget([
                                    'dataProvider' => $dataCategories,
                                    'itemView' => '_listCategory',
                                ]);
                            ?>
                        </ul>
                    </aside>        
                </div>    
            </div>
        </div> 
    </div>
</div>

