<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\CategoriesModel */

$this->title = $model->idCategory;
$this->params['breadcrumbs'][] = ['label' => 'Categories Models', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categories-model-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->idCategory], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->idCategory], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'idCategory',
            'alias',
            'tittle',
        ],
    ]) ?>

</div>
