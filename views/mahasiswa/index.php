<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MahasiswaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Mahasiswas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mahasiswa-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Mahasiswa', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nim',
            'nama',
            'tanggal_lahir',
            'jekel',
            'id_jurusan',
            'jurusan.kode_jurusan',
            'jurusan.nama_jurusan',
            'id_prodi',
            'prodi.prodi',
            'email',
            'alamat',
            [
                'attribute' => 'foto',
                'format' => 'raw',
                'value' => function($data){
                    if(!is_null($data->foto)){
                        return Html::img(Yii::$app->homeUrl . 'img/' . $data->foto,
                        ['style' => 'width:50px;height:auto;']
                    );
                    }else{
                        return NULL;
                    }
                }
            ],
           
           
           
            
            //'id_prodi',
            //'email:email',
            //'alamat',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
