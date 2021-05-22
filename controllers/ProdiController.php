<?php
namespace app\controllers;
use yii\web\Controller;
use yii\data\Pagination;
use app\models\DataProdi;

class ProdiController extends Controller
{
	public function actionIndex()
	{
		$query = DataProdi::find();
		$pagination = new Pagination(['defaultPageSize' => 5, 'totalCount' => $query->count(),]);
		$prodi = $query->orderBy('id') 
			->offset($pagination->offset) 
			->limit($pagination->limit) 
			->all();
		return $this->render('index', ['prodi' => $prodi, 'pagination' => $pagination,]);
	}
}