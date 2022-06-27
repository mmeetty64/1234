<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\widgets\ListView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\TovarSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tovars';
$this->params['breadcrumbs'][] = $this->title;


$this->registerCssFile("@web/css/catalog.css");
?>
<div class="tovar-index" id="tovares-indekses">

    <h1><?= Html::encode($this->title) ?></h1>

    
    <?php Pjax::begin([
    'enablePushState'=> false,
    'timeout'=>5000,
    'id'=>'pjaxcatalog',
     ]);
    ?>
    <?php echo $this->render('_search', ['model' => $searchModel,  'dataProvider' => $dataProvider, 'query' => $query]); ?>

    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'itemOptions' => ['class' => 'item'],
        'layout' => '{pager}<div class="row">{items}</div>{pager}',
        'pager' => ['class' => \yii\bootstrap4\LinkPager::class],
        'itemView' => function ($model, $key, $index, $widget) { 
            $card = "<div class=\"card\" style=\"width: 18rem;\">"
            .HTML::a(Html::img("@web/images/{$model->photo}",['class'=>"card-img", 'alt'=>"Картинка к карточке"]), ['view','id'=>$model->id])
            ."<div class=\"card-body\">"
            ."<h5 class=\"card-title\">"
            .HTML::a(Html::encode($model->title),['view','id'=>$model->id],['class'=>"top-button
            "])
            ."</h5>"
            ." <p class=\"card-text\">Цена: {$model->price} рублей</p>"
            
            ."</div></div>";
            return $card;
            // return Html::a(Html::encode($model->title), ['view', 'id' => $model->id]);
        },
    ]) ?>

    <?php Pjax::end(); ?>

</div>
