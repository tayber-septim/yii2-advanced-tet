<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property integer $idCategory
 * @property string $tittle
 * @property string $description
 * @property string $content
 * @property string $image
 */
class CategoriesModel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {   
        return 'categories';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idCategory', 'tittle', 'description', 'content', 'image'], 'required'],
            [['idCategory'], 'integer'],
            [['content', 'image'], 'string'],
          
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idCategory' => 'Id Category',
            'tittle' => 'Tittle',
            
        ];
    }
}
