<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\ckeditor\CKEditor;

/* @var $this yii\web\View */
/* @var $model app\models\Tintuc */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tintuc-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'tieude_tt')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'noidung_tt')->widget(CKEditor::className(), [
        'options' => ['rows' => 6],
        'preset' => 'Full'   
    ]); ?>

    <?= $form->field($model, 'id_trangthai_tt')->Dropdownlist(['promt'=>'1','1'=>'2','2'=>'3']) ?>

    <?= $form->field($model, 'video_tt')->fileInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hinhanh_tt')->fileInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <?= Html::a('Hủy',Yii::$app->request->baseUrl.'/../web/index.php/tintuc/' , ['class'=>'btn btn-danger']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
