<?php
    use yii\helpers\Html;
    use yii\helpers\HtmlPurifier;
?>

<article class="post post-list">
    <div class="row">
        
        <div class="col-md-10">
            <div class="post-content">
                <header class="entry-header text-uppercase">
                    <!-- <h6><a href="#"> <?= Html::encode($model->tittle) ?></a></h6> -->

                    <h1 class="entry-title"><a href="#"><?= Html::encode($model->tittle) ?></a></h1>
                </header>
                <div class="entry-content">
                    <p><?= HtmlPurifier::process($model->description) ?></p>
                </div>
                
            </div>
        </div>
    </div>
</article>