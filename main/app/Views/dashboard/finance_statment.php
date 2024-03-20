<div class="row mt-5">
    <div class="col-md-12">
        <div class="accordion" id="accordionExample">
            <?php foreach ($getYear as $data) { ?>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button bg-primary text-white" style="height: 70px;" type="button" data-bs-toggle="collapse" data-bs-target="#<?= $data['date'] ?>" aria-expanded="true" aria-controls="<?= $data['date'] ?>">
                            <h5><?= $data['date'] ?></h5>
                        </button>
                    </h2>
                    <div id="<?= $data['date'] ?>" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <div class="row">
                                <?php $getData = $Allmodel->view_table('*', 'tbl_stetment', ['year(date)' => $data['date']])->getResultArray();
                                foreach ($getData as $data) { ?>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="<?= $data['image'] ?>" style="width: 200px;">
                                            </div>
                                            <div class="col-md-8">
                                                <p class="text-secondary"><?= $data['name'] ?> <br> <?= $data['date'] ?></p>

                                                <p><a href="<?= $data['link'] ?>">Download</a></p>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</div>