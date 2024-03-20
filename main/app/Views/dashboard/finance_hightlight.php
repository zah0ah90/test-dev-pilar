<div class="row mt-5">
    <div class="col-md-6">
        <h5>Net Sales</h5>
        <h6 class="text-secondary">Million US$</h6>
        <br>
        <!-- <div id="chartNetSales"></div> -->
        <canvas style="display: block; height: 227px; width: 455px;" height="283" width="568" id="chartNetSales"></canvas>
    </div>
    <div class="col-md-6">
        <h5>Profit for The Year</h5>
        <h6 class="text-secondary">Million US$</h6>
        <br>
        <canvas style="display: block; height: 227px; width: 455px;" height="283" width="568" id="chartProfitforTheYear"></canvas>
    </div>
</div>
<div class="row mb-5 mt-2">
    <div class="col-md-6">
        <h5>Total Assets</h5>
        <h6 class="text-secondary">Million US$</h6>
        <br>
        <canvas style="display: block; height: 227px; width: 455px;" height="283" width="568" id="chartTotalAssets"></canvas>
    </div>
    <div class="col-md-6">
        <h5>Dividend Yield</h5>
        <h6 class="text-secondary">Percentage</h6>
        <br>
        <canvas style="display: block; height: 227px; width: 455px;" height="283" width="568" id="chartDividendYield"></canvas>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <table class="table table-borderless table-responsive">
            <thead>
                <tr style="height: 60px;vertical-align: middle;">
                    <th class="bg-primary text-white" style="width: 50%;">Financial Performance</th>
                    <th class="bg-primary text-white text-center">2019</th>
                    <th class="bg-primary text-white text-center">2020</th>
                    <th class="bg-primary text-white text-center">2021</th>
                    <th class="bg-primary text-white text-center">2022</th>
                    <th class="bg-primary text-white text-center">2023</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($tableFinancePerformance)) {
                    foreach ($tableFinancePerformance as $data) {
                        $percent = ($data['symbol'] == 'percent' ? '%' : null);
                ?>

                        <tr style="height: 60px;vertical-align: middle;">
                            <td><?= $data['name'] ?></td>
                            <td class="text-center"><?= number_format($data['2019'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2020'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2021'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2022'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2023'], 1) . $percent ?></td>
                        </tr>
                <?php }
                } ?>
            </tbody>
        </table>

        <br>
        <table class="table table-borderless table-responsive">
            <thead>
                <tr class="bg-primary" style="height: 60px;vertical-align: middle;">
                    <th class="bg-primary text-white" style="width: 50%;">Financial Ratios</th>
                    <th class="bg-primary text-white text-center">2019</th>
                    <th class="bg-primary text-white text-center">2020</th>
                    <th class="bg-primary text-white text-center">2021</th>
                    <th class="bg-primary text-white text-center">2022</th>
                    <th class="bg-primary text-white text-center">2023</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($tableFinanceRatios)) {
                    foreach ($tableFinanceRatios as $data) {
                        $percent = ($data['symbol'] == 'percent' ? '%' : null);
                ?>
                        <tr style="height: 60px;vertical-align: middle;">
                            <td><?= $data['name'] ?></td>
                            <td class="text-center"><?= number_format($data['2019'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2020'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2021'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2022'], 1) . $percent ?></td>
                            <td class="text-center"><?= number_format($data['2023'], 1) . $percent ?></td>
                        </tr>
                <?php }
                } ?>
            </tbody>
        </table>
    </div>
</div>

<script>
    $(document).ready(function() {
        chartNetSales();
        chartProfitforTheYear();
        chartTotalAssets();
        chartDividendYield();
    })

    function chartNetSales() {
        var data = {
            labels: [<?= implode(',', $netSales['date']) ?>],
            datasets: [{
                label: 'IE',
                backgroundColor: "#0f5498",
                data: [<?= implode(',', $netSales['amountIE']) ?>]
            }, {
                label: 'PLN',
                backgroundColor: "#1ebfd2",
                data: [<?= implode(',', $netSales['amountPLN']) ?>]
            }, ]
        };

        var ctx = $('#chartNetSales')[0].getContext("2d");
        var chart = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                tooltips: {
                    mode: 'label',
                },
                responsive: true,
                scales: {
                    xAxes: [{
                        stacked: true,
                    }],
                    yAxes: [{
                        stacked: true
                    }]
                },
                legend: {
                    position: 'bottom',
                    labels: {
                        usePointStyle: true,
                    }
                }
            }
        })
    }

    function chartProfitforTheYear() {
        var data = {
            labels: [<?= implode(',', $profitForTheYear['date']) ?>],
            datasets: [{
                //label: 'Highest',
                backgroundColor: "#0f5498",
                data: [<?= implode(',', $profitForTheYear['amount']) ?>]
            }]
        };


        var ctx = $('#chartProfitforTheYear')[0].getContext("2d");
        var chart = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                tooltips: {
                    mode: 'label',
                },
                legend: {
                    display: false
                },
                responsive: true,
                scales: {
                    xAxes: [{
                        stacked: true,
                        barPercentage: 0.5
                    }],
                    yAxes: [{
                        stacked: true
                    }]
                }
            }
        })
    }

    function chartTotalAssets() {
        var data = {
            labels: [<?= implode(',', $totalAsset['date']) ?>],
            datasets: [{
                //label: 'Lowest',
                backgroundColor: "#0f5498",
                data: [<?= implode(',', $totalAsset['amount']) ?>]
            }]
        };


        var ctx = $('#chartTotalAssets')[0].getContext("2d");
        var chart = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                tooltips: {
                    mode: 'label',
                },
                responsive: true,
                scales: {
                    xAxes: [{
                        stacked: true,
                    }],
                    yAxes: [{
                        stacked: true
                    }]
                },
                legend: {
                    display: false
                }
            }
        })
    }

    function chartDividendYield() {
        var data = {
            labels: [<?= implode(',', $dividendYield['date']) ?>],
            datasets: [{
                //label: 'Profit',
                backgroundColor: "#0f5498",
                data: [<?= implode(',', $dividendYield['amount']) ?>]
            }]
        };


        var ctx = $('#chartDividendYield')[0].getContext("2d");
        var chart = new Chart(ctx, {
            type: 'bar',
            data: data,
            options: {
                tooltips: {
                    mode: 'label',
                },
                responsive: true,
                scales: {
                    xAxes: [{
                        stacked: true,
                        barPercentage: 0.5
                    }],
                    yAxes: [{
                        stacked: true
                    }]
                },
                legend: {
                    display: false
                    /*position: 'bottom',
                    labels: {
                        usePointStyle: true,
                    }*/
                }
            }
        })
    }
</script>