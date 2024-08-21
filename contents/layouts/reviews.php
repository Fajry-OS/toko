<?php
$id = $row['id'];
$reviews = mysqli_query($koneksi, "SELECT * FROM reviews WHERE id_intro = $id");
$reviewsuser = mysqli_fetch_all($reviews, MYSQLI_ASSOC);

function renderStars($rating)
{
    $fullstars = floor($rating);
    $halfstars = ($rating - $fullstars) >= 0.5 ? true : false;
    $starHtml = str_repeat('<i class="bi bi-star-fill"></i>', $fullstars);
    if ($halfstars) {
        $starHtml .= '<i class="bi bi-star-half"></i>';
    }
    $starHtml .= str_repeat('<i class="bi bi-star"></i>', 5 - $fullstars - $halfstars ? 1 : 0);
    return $starHtml;
}
?>

<div class="container-fluid my-5 py-5 text-center" style="background-color:#efefef;" id="review">
    <h2><i class="bi bi-stars"></i>Book Reviews</h2>
    <p>What my students have said about the book</p>
    <div class="row justify-content-center">
        <?php foreach ($reviewsuser as $review) { ?>
            <div class="col-8">
                <div class="card">
                    <div class="card-body text-start">
                        <?= renderStars($review['rating']) ?>
                        <h5 class="card-title"> <?= isset($review['header_review']) ? $review['header_review'] : null ?></h5>
                        <p class="card-text"> <?= isset($review['isi_review']) ? $review['isi_review'] : null ?></p>
                        <p><small><?= isset($review['author']) ? $review['author'] : null ?></small></p>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>