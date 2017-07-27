<?php
    use yii\helpers\Html;
    use yii\helpers\HtmlPurifier;
?>

<li>
    <a href="/categories?id=<?=$model->idCategory?>"><?= Html::encode($model->tittle) ?></a>
    <span class="post-count pull-right"></span>
</li>