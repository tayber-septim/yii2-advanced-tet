<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "categories".
 *
 * @property integer $idCategory
 * @property string $alias
 * @property string $tittle
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
            [['alias', 'tittle'], 'required'],
            [['alias'], 'string', 'max' => 20],
            [['tittle'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idCategory' => 'Id Category',
            'alias' => 'Alias',
            'tittle' => 'Tittle'
        ];
    }
}
