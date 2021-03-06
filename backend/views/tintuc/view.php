<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Tintuc */

$this->title = $model->id_tt;
$this->params['breadcrumbs'][] = ['label' => 'Tin tức', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tintuc-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_tt], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_tt], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_tt',
            'tieude_tt',
            'noidung_tt:html',           
            'id_trangthai_tt',
            'video_tt',
            'hinhanh_tt',
            'time_up',
        ],
    ]) ?>

</div>
