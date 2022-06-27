<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = 'Где нас найти?';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <?= Html::img('@web/images/123.png', ['alt' => 'Наш логотип']) ?>

    <p>8(900)123-45-67, г. Санкт-Петербург, ул. Малая морская, д. 98 лит К, printer@lucshe.net</p>

    <code><?= __FILE__ ?></code>
</div>
