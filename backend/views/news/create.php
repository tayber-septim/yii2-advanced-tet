<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\NewsModel */

$this->title = 'Создать';
$this->params['breadcrumbs'][] = ['label' => 'Новости', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Создать';
?>
<div class="news-model-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'arrCategory' => $arrCategory,
    ]) ?>

</div>
