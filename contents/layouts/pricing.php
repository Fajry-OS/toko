<?php
$selectPricing = mysqli_query($koneksi, "SELECT * FROM pricing");
$rowPrice = mysqli_fetch_all($selectPricing, MYSQLI_ASSOC);
//var_dump($rowPrice);
?>


<?= isset($plan['card_class']) ? $plan['card_class'] : null ?>
<div class="container-fluid my-5 py-5" style="background-color:#efefef;" id="pricing">
    <div class="row m-5 ">
        <div class="text-center">
            <h2>Pricing Plan</h2>
            <p>Choose a pricing plan to suit you.</p><br>
        </div>

        <div class="card-group justify-content-center">
            <?php foreach ($rowPrice as $plan) { ?>
                <div class="col-md-4">
                    <div class="card text-center <?= isset($plan['card_class']) ? $plan['card_class'] : null ?>">
                        <div class="card-header text-primary py-3">
                            <?= isset($plan['header']) ? $plan['header'] : null ?>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><?= isset($plan['pilihedisi']) ? $plan['pilihedisi'] : null ?></h5>
                            <p class="card-text"><?= isset($plan['subtitle']) ? $plan['subtitle'] : null ?></p>
                            <h3 class="text-primary "><?= isset($plan['harga']) ? "Rp." . number_format($plan['harga'], 2, ',', '.') . "-" : null ?></h3>
                            <p class="card-text mt-3"><small class="text-body-secondary"><?= isset($plan['deskripsi']) ? $plan['deskripsi'] : null ?></small></p>
                            <a href="#" class="btn <?= isset($plan['btn_class']) ? $plan['btn_class'] : null ?>">Buy Now</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>




<!-- //garis -->
<!-- <div class="container-fluid my-5 py-5" style="background-color:#efefef;" id="pricing">
    <div class="row m-5 ">
        <div class="text-center">
            <h2>Pricing Plan</h2>
            <p>Choose a pricing plan to suit you.</p><br>
        </div>
        <div class="card-group">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center mx-5">
                        <h5 class="card-title">Starter Edition</h5>
                        <p class="card-text">Ebook download only</p>
                        <h3 class="text-primary ">Rp. 25.000,00</h3>
                        <p class="card-text mt-3"><small class="text-body-secondary">Lorem, ipsum dolor sit amet consectetur adipisicing elite.</small></p>
                        <a href="#" class="btn btn-outline-primary">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center border-primary" style="position:relative; z-index:99;">
                    <div class="card-header text-primary">
                        Most Popular
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Complete Edition</h5>
                        <p class="card-text">eBook download & all updates</p>
                        <h3 class="text-primary ">Rp. 30.000,00</h3>
                        <p class="card-text mt-3"><small class="text-body-secondary">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia voluptatem, alias ipsa quibusdam blanditiis assumenda officiis aliquid error optio laborum!</small></p>
                        <a href="#" class="btn btn-outline-primary">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body text-center mx-5">
                        <h5 class="card-title">Ultimate Edition</h5>
                        <p class="card-text">download, updates & extras</p>
                        <h3 class="text-primary ">Rp. 40.000,00</h3>
                        <p class="card-text mt-3"><small class="text-body-secondary">Lorem, ipsum dolor sit amet consectetur adipisicing elite.</small></p>
                        <a href="#" class="btn btn-outline-primary">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->