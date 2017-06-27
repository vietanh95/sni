<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tintuc */

$this->title = 'Cập nhật tin tức';
$this->params['breadcrumbs'][] = ['label' => 'Tintucs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_tt, 'url' => ['view', 'id' => $model->id_tt]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tintuc-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
