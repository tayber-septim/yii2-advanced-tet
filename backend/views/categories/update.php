<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\CategoriesModel */

$this->title = 'Изменить: ' . $model->tittle;
$this->params['breadcrumbs'][] = ['label' => 'Categories Models', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idCategory, 'url' => ['view', 'id' => $model->idCategory]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="categories-model-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
