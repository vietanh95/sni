<?php

namespace backend\controllers;

use Yii;
use backend\models\Tintuc;
use backend\models\TintucSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\filters\AccessControl;


/**
 * TintucController implements the CRUD actions for Tintuc model.
 */
class TintucController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Tintuc models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TintucSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Tintuc model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Tintuc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Tintuc();
        if ($model->load(Yii::$app->request->post())) {
            date_default_timezone_set('Asia/Ho_Chi_Minh');
            $model->time_up = date('Y-m-d H:i:s');
             $model->hinhanh_tt = UploadedFile::getInstance($model, 'hinhanh_tt');              
            if($model->hinhanh_tt != ""){
                $model->hinhanh_tt->saveAs('uploads/' . time() . $model->hinhanh_tt);
                $model->hinhanh_tt = 'uploads/' . time() . $model->hinhanh_tt;     
            }
            else{
                $model->hinhanh_tt = $imageOld;                  
            }
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_tt]);
        } else {
            return $this->renderAjax('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Tintuc model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        /*$link = Yii::getAlias('@webroot');  
        print_r($link);*/
        
        $imageOld = $model->hinhanh_tt;
        if ($model->load(Yii::$app->request->post())) {
             $model->hinhanh_tt = UploadedFile::getInstance($model, 'hinhanh_tt');              
            if($model->hinhanh_tt != ""){
                $model->hinhanh_tt->saveAs('uploads/' . time() . $model->hinhanh_tt);
                $model->hinhanh_tt = 'uploads/' . time() . $model->hinhanh_tt;     
            }
            else{
                $model->hinhanh_tt = $imageOld;                              
            }
            $model->save();
            return $this->redirect(['view', 'id' => $model->id_tt]);

        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Tintuc model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Tintuc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Tintuc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Tintuc::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}

