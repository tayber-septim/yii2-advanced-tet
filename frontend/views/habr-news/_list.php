<?php
    use yii\helpers\Html;
    use yii\helpers\HtmlPurifier;
?>

<article class="post post-list">
    <div class="row">
        
        <div class="col-md-10">
            <div class="post-content">
                <div class="post-thumb">
                    <a href="#"><img src="<?= Html::encode($model->image) ?>" alt="<?= Html::encode($model->tittle) ?>"></a>

                   
                </div>
                <header class="entry-header text-uppercase">
                   
                    <h3 class="entry-title"><a href="#"><?= Html::encode($model->tittle) ?></a></h1>
                   
                </header>
                <div class="entry-content">
                    <p><?= HtmlPurifier::process($model->content) ?></p>
                </div>
                
            </div>
        </div>
    </div>
</article>