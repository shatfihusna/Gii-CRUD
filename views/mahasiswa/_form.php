<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Mahasiswa */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mahasiswa-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nim')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'tanggal_lahir')->widget(DatePicker::classname(), [
    'options' => ['placeholder' => 'Pilih Tanggal ...'],
    'pluginOptions' => [
        'autoclose'=>true,
        'format' => 'dd-M-yyyy'
    ]
    ]); ?>

    <?= $form->field($model, 'jekel')->radioList(['L' => 'Laki-laki', 'P' => 'Perempuan'],[
        'item' => function($index, $label, $name, $checked, $value){
            return '<label><input type="radio" class="flat" name="'.$name.'" value="'.$value.'" '.
            ($checked ? "checked" : "").'>'.$label.'</label>';
        }
        ]
) ?>

    <?php //= $form->field($model, 'id_prodi')->textInput() ?>

    <?php
        $dataPost=ArrayHelper::map(\app\models\Prodi::find()->asArray()
            ->all(), 'id', 'prodi');
         echo $form->field($model, 'id_prodi')
        ->dropDownList(
            $dataPost,           
            ['id'=>'prodi']
        );
    ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
