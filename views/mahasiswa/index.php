<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1><b>DATA MAHASISWA</b></h1>
<p>
	<?=Html::a('Create Mahasiswa',['create'],['class'=>'btn btn-success']) ?>
</p>

<table class="table table-hover">
	<tr>
		<td><b>No</b></td>
		<td><b>NIM</b></td>
		<td><b>Nama</b></td>
		<td><b>Jenis Kelamin</b></td>
		<td><b>ID Prodi</b></td>
		<td><b>Email</b></td>
		<td><b>Alamat</b></td>
		<td><b>Aksi</b></td>
	</tr>
	<?php foreach ($data_mahasiswa as $mahasiswa): ?> 
		<tr>
			<td><?= Html::encode($mahasiswa->id) ?></td>
			<td><?= Html::encode($mahasiswa->nim) ?></td>
			<td><?= Html::encode($mahasiswa->nama) ?></td>
			<td><?= Html::encode($mahasiswa->jekel) ?></td>
			<td><?= Html::encode($mahasiswa->id_prodi) ?></td>
			<td><?= Html::encode($mahasiswa->email) ?></td>
			<td><?= Html::encode($mahasiswa->alamat) ?></td>
			<td>
				<?=Html::a('Edit',['mahasiswa/update','id'=>$mahasiswa->id])?> ||
				<?=Html::a('Hapus',['mahasiswa/delete','id'=>$mahasiswa->id],
				['onclick'=>'return(confirm("Yakin Ingin Menghapus Data ?"))'])?> 
			</td>
		</tr>
	<?php endforeach; ?>
</table>
	<?= LinkPager::widget(['pagination'=>$pagination]) ?>