<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\tovar */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Tovars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;


$this->registerCssFile("@web/css/catalog.css");
?>
<div class="tovar-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= Html::img("@web/images/{$model->photo}",['class'=>"card-images", 'alt'=>"Картинка к карточке"]) ?>
<div class="perechod">
    <?= Html::a('Перейти в каталог', ['index', 'id'=> $id], ['class'=> 'btn btn-primary']) ?>
</div>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'title',
            'price',
            'country',
            'model',
            'year',
            'count',
        ],
    ]) ?>

</div>
