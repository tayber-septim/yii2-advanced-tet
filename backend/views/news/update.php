<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\NewsModel */

$this->title = 'Изменить новость: ' . $model->tittle;
$this->params['breadcrumbs'][] = ['label' => 'News Models', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'изменить';
?>
<div class="news-model-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'arrCategory' => $arrCategory,
    ]) ?>

</div>
