<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TovarSearch */
/* @var $form yii\widgets\ActiveForm */

?>
<div class="row">
    <div class="col-md-6">
        <div>Сортировать по:</div>
        <div class="row-sort">
            <div class="sort-item first-item"><?= $dataProvider->sort->link('title') ?></div>
            <div class="sort-item"><?= $dataProvider->sort->link('price') ?></div>
            <div class="sort-item last-item"><?= $dataProvider->sort->link('year') ?></div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="product-search">
            <?php $form=ActiveForm::begin([
                'action'=>['index'],
                'method'=>'get',
                'options'=>[
                    'data-pjax'=>1
                ],
            ]);?>
            <?php
            $params=[
                'prompt'=>'Все категории'
            ];
            echo $form->field($model, 'id_category')->dropDownList($query, $params)->label('Выберите категорию');
            ?>
            <div class="item">
                <?= Html::submitButton('Найти', ['class'=>'btn btn-primary'])?>
                <?= Html:: a('Сбросить все', ['/catalog'], ['class' => 'btn btn-outline-secondary']) ?>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>

<div class="tovar-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <!-- <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'title') ?>

    <?= $form->field($model, 'price') ?>

    <?= $form->field($model, 'photo') ?>

    <?= $form->field($model, 'country') ?>

    <?php echo $form->field($model, 'model') ?>

    <?php echo $form->field($model, 'year') ?>

    <?php echo $form->field($model, 'count') ?>

    <?php echo $form->field($model, 'id_category') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div> -->

    <?php ActiveForm::end(); ?>

</div>
