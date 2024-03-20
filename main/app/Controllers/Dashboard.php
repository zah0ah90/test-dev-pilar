<?php

namespace App\Controllers;

use App\Models\Allmodel;

class Dashboard extends BaseController
{
    public $Allmodel;

    public function __construct()
    {
        $this->Allmodel = new Allmodel();
    }

    public function index()
    {
        return view('dashboard/dashboard');
    }

    function financialHightlight()
    {
        if ($this->request->isAJAX()) {
            $dateCNS = null;
            $amountIE = null;
            $amountPLN = null;
            $tableFinancePerformance = null;
            $tableFinanceRatios = null;
            $queryChartNetSales = null;
            $dateCPFTY = null;
            $amountCPFTY = null;
            $ProfitForTheYear = null;

            $tableFinancePerformance = $this->Allmodel->financialPerformance('1');
            $tableFinanceRatios = $this->Allmodel->financialPerformance('2');

            $queryChartNetSales = $this->Allmodel->chartNetSales();
            foreach ($queryChartNetSales as $dataCNS) {
                $dateCNS[] =  $dataCNS['date'];
                $amountIE[] = round($dataCNS['amount_ie'], 1);
                $amountPLN[] = round($dataCNS['amount_pln'], 1);
            }

            $netSales = [
                'date' => $dateCNS,
                'amountIE' => $amountIE,
                'amountPLN' => $amountPLN,
            ];



            $queryChartProfitForTheYear = $this->Allmodel->view_table('name, amount, EXTRACT(YEAR FROM date) as date', 'tbl_finance', ['name' => 'Profit for the Year'])->getResultArray();
            foreach ($queryChartProfitForTheYear as $dataCPFTY) {
                $dateCPFTY[] = $dataCPFTY['date'];
                $amountCPFTY[] = $dataCPFTY['amount'];
            }

            $ProfitForTheYear = [
                'date' => $dateCPFTY,
                'amount' => $amountCPFTY
            ];

            $totalAsset = [
                'date' => ['2019', '2020', '2021', '2022', '2023'],
                'amount' => ['1325', '1343', '1359', '1362', '1324.2']
            ];

            $dividendYield = [
                'date' => ['2018', '2019', '2020', '2021', '2022'],
                'amount' => ['10.1', '10.1', '8.1', '9.2', '10.1']
            ];


            $paramsView = [
                'tableFinancePerformance' => $tableFinancePerformance,
                'tableFinanceRatios' => $tableFinanceRatios,
                'netSales' => $netSales,
                'profitForTheYear' => $ProfitForTheYear,
                'totalAsset' => $totalAsset,
                'dividendYield' => $dividendYield,
            ];

            $data['token'] = csrf_hash();
            $data['view'] = view('dashboard/finance_hightlight', $paramsView);
            return $this->response->setJSON($data);
        } else {
            return redirect()->to('dashboard');
        }
    }

    function financialStetment()
    {
        if ($this->request->isAJAX()) {
            $data['token'] = csrf_hash();
            $paramsView = [
                'getYear' => $this->Allmodel->getYearStetment(),
                'Allmodel' => $this->Allmodel
            ];
            $data['view'] = view('dashboard/finance_statment', $paramsView);
            return $this->response->setJSON($data);
        } else {
            return redirect()->to('dashboard');
        }
    }
}
