<?php
namespace app\models;

use yii\db\ActiveRecord;

class DataJenisBarang extends ActiveRecord
{
	public static function tableName()
	{
		return 'jenis';
	}
	
}