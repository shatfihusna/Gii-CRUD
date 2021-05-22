<?php
namespace app\models;

use yii\db\ActiveRecord;

class DataSupplier extends ActiveRecord
{
	public static function tableName()
	{
		return 'supplier';
	}
}