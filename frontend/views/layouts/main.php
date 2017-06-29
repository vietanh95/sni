<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
<script type="text/javascript">
    $("#clicktab").click(function(){
        alert("ok");
    });
</script>
    <?=    
      /* Nav::widget([
            'options' => ['class' => 'sidebar-menu treeview'],
            'items' => [

                ['label' => 'Menu 1', 'url' => ['/a/index']],
                ['label' => 'Menu 2', 'url' => ['/custom-perks/index']],
                ['label' => 'Submenu',  'items' => [
                    ['label' => 'Action', 'url' => '#'],
                    ['label' => 'Another action', 'url' => '#'],
                    ['label' => 'Something else here', 'url' => '#'],
                    ],
                ],
            ],
        ]);*/
    
    $menuLeftItem[] = '<li>'.Html::a('<i class="glyphicon glyphicon-home"></i> Home',Yii::$app->request->baseUrl.'/index.php/site/index',['style'=>'font-weight:bold;']).'</li>';
    $menuLeftItem[] = ['label' => 'Tin tức',
        'items' => [
            ['label' => 'Tin tức trong ngày', 'url' => Yii::$app->request->baseUrl.'/index.php/tintuc/index'],
            ['label' => 'Tin nóng trong ngày', 'url' => '#'],
            ['label' => 'Tin nhiều người quan tâm', 'url' => '#'],
        ],
    ];
    $menuLeftItem[] = ['label' => 'Thế giới',
        'items' => [
            ['label' => 'Thế giới đó đây', 'url' => '#'],
            ['label' => 'Tư liệu', 'url' => '#'],
            ['label' => 'Kiều bào', 'url' => '#'],
        ],
    ];
    $menuLeftItem[] = ['label' => 'Xã hội',
        'items' => [
            ['label' => 'Chính trị', 'url' => '#'],
            ['label' => 'Phóng sự', 'url' => '#'],
            ['label' => 'Việc làm', 'url' => '#'],
        ],
    ];
    $menuLeftItem[] = ['label' => 'Kinh tế',
        'items' => [
            ['label' => 'Tài chính', 'url' => '#'],
            ['label' => 'Thị trường', 'url' => '#'],
            ['label' => 'Doanh nghiệp', 'url' => '#'],
            ['label' => 'Tiêu dùng', 'url' => '#'],
        ],
    ];
    $menuLeftItem[] = ['label' => 'Thể thao',
        'items' => [
            ['label' => 'Bóng đá', 'url' => '#'],
            ['label' => 'Thể thao khác', 'url' => '#'],
            ['label' => 'Hậu trường', 'url' => '#'],
        ],
    ];
    $menuLeftItem[] = ['label' => 'Pháp luật' ,
        'items' => [
            
        ],
        'url'=>'#',
    ];

    NavBar::begin([
        /*'brandLabel' => '<i class="glyphicon glyphicon-home"></i> Home',
        'brandUrl' => Yii::$app->homeUrl,*/
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top ',
        ],
    ]);
        /*$menuItems[] = '<li>'.Html::textInput('xxx').'</li>';*/
        $menuItems[] = '<li>'.Html::input('text', 'username', '', ['class' => 'form-control','id'=>'searchItem','style'=>'margin-top:5px;','placeholder'=>'Seach Information']).'</li>';
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'.Html::beginForm(['/site/logout'], 'post').Html::submitButton('Logout (' . Yii::$app->user->identity->username . ')',['class' => 'btn btn-link logout']). Html::endForm(). '</li>';
    }

    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-left'],
        'items' => $menuLeftItem,
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container" style="width: 1300px;">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>

