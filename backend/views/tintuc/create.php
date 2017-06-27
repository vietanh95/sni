<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Tintuc */

$this->title = 'Create Tintuc';
$this->params['breadcrumbs'][] = ['label' => 'Tintucs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tintuc-create">

    

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
