<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TintucSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tin tức';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tintuc-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
            <!-- <?= Html::a('create user','create' , ['class'=>'btn btn-success']) ?> -->
            <?= Html::button('Create User', ['value'=>Url::to(Yii::$app->request->baseUrl.'/index.php/tintuc/create/'), 'class' => 'btn btn-success','id'=>'modalbutton']) ?>
    </p>
    <?php
        Modal::begin([
            'header'=>'<h3>Tạo mới tin tức</h3>',
            'id'=>'modal',
            'size'=>'modal-lg',
        ]);
        echo "<div id='modalContent'></div>";
        Modal::end();

    ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id_tt',
            'tieude_tt',
            //'noidung_tt',
            'id_trangthai_tt',
            /*'video_tt',
            'hinhanh_tt',*/
            array(
                'attribute'=>'hinhanh_tt',
                'format' => 'html',
                'value' => function($data) { return Html::img($data->hinhanh_tt, ['width'=>'50px']);},
            ),
            array(
                'attribute' => 'hinhanh_tt',
                'format' => 'html',
                'value' => function($data) { return Html::img($data->hinhanh_tt, ['width'=>'50px']); },
            ),        
            'time_up',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
