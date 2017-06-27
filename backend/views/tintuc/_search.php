<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TintucSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tintuc-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_tt') ?>

    <?= $form->field($model, 'tieude_tt') ?>

    <?= $form->field($model, 'noidung_tt') ?>

    <?= $form->field($model, 'id_trangthai_tt') ?>

    <?php //$form->field($model, 'video_tt') ?>

    <?php // echo $form->field($model, 'hinhanh_tt') ?>

    <?php // echo $form->field($model, 'time_up') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
