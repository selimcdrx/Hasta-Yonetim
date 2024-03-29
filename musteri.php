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
					<h5 class="font-weight-bold text-primary">Müşteri Detayı</h5>
				</div>
				<div class="card-body">
					<form action="islemler/ajax.php" method="POST" accept-charset="utf-8">
						<input type="hidden" name="musteri_id" value="<?php echo $_POST['musteri_id'] ?>">

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>İsim Soyisim</label>
								<input disabled="" value="<?php echo $mustericek['musteri_isim'] ?>" type="text" name="musteri_isim" placeholder="Hastanın İsmini Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Mail Adresi</label>
								<input disabled="" value="<?php echo $mustericek['musteri_mail'] ?>" type="mail" name="musteri_mail" placeholder="Hastanın Mail Adresini Girin" class="form-control">
							</div>
						</div>


						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Telefon Numarası</label>
								<input disabled="" value="<?php echo $mustericek['musteri_telefon'] ?>" type="text" name="musteri_telefon" placeholder="Hastanın Telefonunu Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Hastanın Problemi</label>
								<input disabled="" value="<?php echo $mustericek['musteri_website'] ?>" type="text" name="musteri_website" placeholder="Hastanın Sorununu Girin" class="form-control">
							</div>
						</div>



						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Ülke</label>
								<input disabled="" value="<?php echo $mustericek['musteri_ulke'] ?>" type="text" name="musteri_ulke" placeholder="Hastanın Yaşadığı Ülkeyi Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Şehir</label>
								<input disabled="" value="<?php echo $mustericek['musteri_sehir'] ?>" type="text" name="musteri_sehir" placeholder="Hastanın Yaşadığı Şehri Girin" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Adres</label>
								<input disabled="" value="<?php echo $mustericek['musteri_adres'] ?>" type="text" name="musteri_adres" placeholder="Hastanın Adresini Girin" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Meslek</label>
								<input disabled="" value="<?php echo $mustericek['musteri_meslek'] ?>" type="text" name="musteri_meslek" placeholder="Hastanın Giriş yaptığı tarih" class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 form-group">
							<textarea disabled="" name="musteri_detay" class="form-control" id="editor"><?php echo $mustericek['musteri_detay'] ?></textarea>
						</div>
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