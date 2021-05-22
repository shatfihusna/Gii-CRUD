<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h2><b>Data Program Studi</b></h2>
<br>
<table class="table table-hover">
	<tr>
		<td>Id</td>
		<td>Prodi</td>
		<td>Keterangan</td>
	</tr>
	<?php foreach ($prodi as $prodi): ?> 
		<tr>
			<td><?= Html::encode($prodi->id) ?></td>
			<td><?= Html::encode($prodi->prodi) ?></td>
			<td><?=$prodi->keterangan ?> </td>
		</tr>
	<?php endforeach; ?>
</table>
	<?= LinkPager::widget(['pagination'=>$pagination]) ?>