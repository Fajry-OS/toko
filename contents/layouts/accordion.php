<?php
$id = $row['id'];
$topics = mysqli_query($koneksi, "SELECT * FROM topics WHERE id_intro= $id");
$topicsAccordion = mysqli_fetch_all($topics, MYSQLI_ASSOC);
?>

<div class="container-fluid" id="topics">
    <div class="row justify-content-center align-item-center m-5">
        <div class="text-center mb-5">
            <h2>Inside The Book</h2>
            <p>A quick glance at the topics you'll learn</p>
        </div>
        <div class="col-md-5">
            <img src="../assets/<?= isset($row['gambar2']) ? $row['gambar2'] : null ?>" alt="PHP Interpreter" width="100%">
        </div>
        <div class="col-md-7">
            <?php
            foreach ($topicsAccordion as $topic) { ?>
                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne<?= $topic['id'] ?>" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne<?= $topic['id'] ?>">
                                <?= $topic['chapter'] . " " . "-" . " " . $topic['judul_chapter'] ?>
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseOne<?= $topic['id'] ?>" class="accordion-collapse collapse show">
                            <div class="accordion-body">
                                <?= $topic['isi_chapter'] ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
</div>