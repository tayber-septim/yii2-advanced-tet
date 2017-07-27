<?php

namespace backend\controllers;

use Yii;
use common\models\NewsModel;
use common\models\CategoriesModel;
use backend\models\NewsSearchModel;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * NewsController implements the CRUD actions for NewsModel model.
 */
class NewsController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all NewsModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new NewsSearchModel();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $model_categories = CategoriesModel::find()->orderBy('tittle ASC')->all();

        foreach ($model_categories as  $value) {
            $arrCategory[$value->idCategory] = $value->tittle;


        }

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'arrCategory' => $arrCategory
        ]);
    }

    /**
     * Displays a single NewsModel model.
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
     * Creates a new NewsModel model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new NewsModel();

        $model_categories = CategoriesModel::find()->orderBy('tittle ASC')->all();

        foreach ($model_categories as  $value) {
            $arrCategory[$value->idCategory] = $value->tittle;

        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
                'arrCategory' => $arrCategory
            ]);
        }
    }

    /**
     * Updates an existing NewsModel model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $model_categories = CategoriesModel::find()->orderBy('tittle ASC')->all();

        foreach ($model_categories as  $value) {
            $arrCategory[$value->idCategory] = $value->tittle;

        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'arrCategory' => $arrCategory
            ]);
        }
    }

    /**
     * Deletes an existing NewsModel model.
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
     * Finds the NewsModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return NewsModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = NewsModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
