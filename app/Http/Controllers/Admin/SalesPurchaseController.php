<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Sale;
use App\Models\Purchase;
use App\Models\Customers;

use Illuminate\Http\Request;

class SalesPurchaseController extends Controller
{
    public function getSalesList(){
        $Sales = Sale::paginate(10);
        return view('admin.Sales.index',["Sales" => $Sales]);
    }

    public function getSalesShow(){
        return view('admin.Sales.index');
    }

    public function getSalesEdit(){
        return view('admin.Sales.index');
    }

    public function getSalesDestroy(){
        return view('admin.Sales.index');
    }

    public function getPurchasingList(){
        $Purchasing = Purchase::paginate(10);
        return view('admin.Purchasing.index',["Purchasing" => $Purchasing]);
    }

    public function getPurchasingShow(){
        return view('admin.Purchasing.index');
    }

    public function getPurchasingEdit(){
        return view('admin.Purchasing.index');
    }

    public function getPurchasingDestroyer(){
        return view('admin.Purchasing.index');
    }

    public function getMasterDataList(){
        $MasterData = Customers::paginate(10);
        return view('admin.MasterData.index',["MasterData" => $MasterData]);
    }

    public function getMasterDataShow(){
        return view('admin.MasterData.index');
    }

    public function getMasterDataEdit(){
        return view('admin.MasterData.index');
    }

    public function getMasterDataDestroy(){
        return view('admin.MasterData.index');
    }
}
