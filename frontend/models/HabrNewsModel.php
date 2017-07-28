<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "habrNews".
 *
 * @property integer $id
 * @property string $tittle
 * @property string $content
 * @property string $link
 * @property string $image
 */
class HabrNewsModel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'habrNews';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tittle', 'content', 'link', 'image'], 'required'],
            [['content', 'image'], 'string'],
            [['tittle', 'link'], 'string', 'max' => 255],
            [['link'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tittle' => 'Tittle',
            'content' => 'Content',
            'link' => 'Link',
            'image' => 'Image',
        ];
    }
}
