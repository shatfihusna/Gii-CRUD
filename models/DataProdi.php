<?php
namespace app\models;

use yii\db\ActiveRecord;

class DataProdi extends ActiveRecord
{
	public static function tableName()
	{
		return 'prodi';
	}
}