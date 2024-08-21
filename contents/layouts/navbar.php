<!-- Navbar -->
<div class="navbar navbar-expand-md navbar-light" style="background-color:#efefef;">
    <div class="container-lg">
        <a href="" class="navbar-brand">
            <span class="fw-bold text-secondary"><i class="bi bi-book-fill"></i>
                <?= isset($row['judulwebsite']) ? $row['judulwebsite'] : null ?>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav" aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end align-center" id="main-nav">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="#topics" class="nav-link">About Us</a></li>
                <li class="nav-item"><a href="#review" class="nav-link">Reviews</a></li>
                <li class="nav-item"><a href="#contact" class="nav-link">Get in Touch</a></li>
                <li class="nav-item"><a href="#pricing" class="nav-link">Pricing</a></li>
                <li class="nav-item ms-2 d-none d-md-inline"><a href="#pricing" class="btn btn-secondary">Buy Now</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Main image & intro text -->
<section>
    <div class="container-lg">
        <div class="row justify-content-center align-item-center">
            <div class="col-md-7 text-center text-md-start">
                <div class="display-1">Black Belt</div>
                <div class="display-5 text-muted">Koding Skill Anda</div>
                <p class="lead my-4 text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident iste
                    unde ea omnis accusantium tempora.</p>
                <a href="#pricing" class="btn btn-secondary btn-lg">Buy Now</a>
                <a href="#sidebar" class="d-block mt-3">Explore My Web</a>
                <!-- <img src="../assets/LogoPhp.png" alt="PHP Logo" width="250px"> -->
            </div>
            <div class="col-md-5 text-center text-md-center">
                <img src="../assets/<?= isset($row['gambar']) ? $row['gambar'] : null ?>" alt="PHP Logo" width="250px">
            </div>
            <!-- <div class="justify-content-center align-items-center">
                <div class="col-md-5 text-center text-md-start">
                    
                </div>
            </div> -->
        </div>
    </div>
    </div>
</section>