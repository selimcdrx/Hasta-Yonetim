<?php 
require 'header.php';
if (isset($_POST['musteri_id'])) {
	$sorgu=$db->prepare("SELECT * FROM musteri WHERE musteri_id=:musteri_id");
	$sorgu->execute(array('musteri_id' => $_POST['musteri_id']));
	$mustericek=$sorgu->fetch(PDO::FETCH_ASSOC);
} else {
	header("location:index.php");
	exit;
}



?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Hasta Düzenleme</h5>
				</div>
				<div class="card-body">
					<form action="islemler/ajax.php" method="POST" accept-charset="utf-8">
						<input type="hidden" name="musteri_id" value="<?php echo $_POST['musteri_id'] ?>">

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>İsim Soyisim</label>
								<input value="<?php echo $mustericek['Hastanın_isim'] ?>" type="text" name="Hastanızın_isim" placeholder="Hastanınız İsmini Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Mail Adresi</label>
								<input value="<?php echo $mustericek['Hastanın_mail'] ?>" type="mail" name="Hastanızın_mail" placeholder="Hastanınız Mail Adresini Girin" class="form-control">
							</div>
						</div>


						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Telefon Numarası</label>
								<input value="<?php echo $mustericek['Hastanın_telefon'] ?>" type="text" name="Hastanızın_telefon" placeholder="Hastanınız Telefonunu Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Hastanın sorununu girin</label>
								<input value="<?php echo $mustericek['Hastanın_website'] ?>" type="text" name="Hastanızın_website" placeholder="Hastanınız Sorununu Girin" class="form-control">
							</div>
						</div>



						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Ülke</label>
								<input value="<?php echo $mustericek['Hastanın_ulke'] ?>" type="text" name="Hastanızın_ulke" placeholder="Hastanınız Yaşadığı Ülkeyi Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Şehir</label>
								<input value="<?php echo $mustericek['Hastanın_sehir'] ?>" type="text" name="Hastanızın_sehir" placeholder="Hastanınız Yaşadığı Şehri Girin" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Adres</label>
								<input value="<?php echo $mustericek['Hastanın_adres'] ?>" type="text" name="Hastanızın_adres" placeholder="Hastanınız Adresini Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Giriş yapıldığı tarih</label>
								<input value="<?php echo $mustericek['Hastanın_meslek'] ?>" type="text" name="Hastanızın_meslek" placeholder="Hastanınız Giriş yapıldığı tarih yazın" class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 form-group">
							<textarea name="Hasta_detay" class="form-control" id="editor"><?php echo $mustericek['hasta_detay'] ?></textarea>
						</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="Hastayıduzenle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<?php require 'footer.php'; ?>
<script src="vendor/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	CKEDITOR.replace("editor");
</script>