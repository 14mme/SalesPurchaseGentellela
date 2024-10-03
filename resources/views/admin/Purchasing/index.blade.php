@extends('admin.layouts.admin')

@section('title', __('views.admin.Purchasing.index.title'))

@section('content')
    <div class="row">
        <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
               width="100%">
            <thead>
            <tr>
                <th>@sortablelink('No_Transaksi', __('views.admin.Purchasing.index.table_header_0'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('Tanggal',  __('views.admin.Purchasing.index.table_header_1'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('Kode_Supplier',  __('views.admin.Purchasing.index.table_header_2'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('Nama', __('views.admin.Purchasing.index.table_header_3'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('Total', __('views.admin.Purchasing.index.table_header_4'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('created_at', __('views.admin.Purchasing.index.table_header_5'),['page' => $Purchasing->currentPage()])</th>
                <th>@sortablelink('updated_at', __('views.admin.Purchasing.index.table_header_6'),['page' => $Purchasing->currentPage()])</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($Purchasing as $purchase)
                <tr>
                    <td>{{ $purchase->No_Transaksi }}</td>
                    <td>{{ $purchase->Tanggal }}</td>
                    <td>{{ $purchase->Kode_Supplier }}</td>
                    <td>{{ $purchase->Nama }}</td>
                    <td>{{ $purchase->Total }}</td>
                    <td>{{ $purchase->created_at }}</td>
                    <td>{{ $purchase->updated_at }}</td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="{{ route('admin.Purchasing.show', [$purchase->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Purchasing.index.show') }}">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a class="btn btn-xs btn-info" href="{{ route('admin.Purchasing.edit', [$purchase->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Purchasing.index.edit') }}">
                            <i class="fa fa-pencil"></i>
                        </a>
                        <a href="{{ route('admin.Purchasing.destroy', [$purchase->id]) }}" class="btn btn-xs btn-danger user_destroy" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Purchasing.index.delete') }}">
                            <i class="fa fa-trash"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pull-right">
            {{ $Purchasing->links() }}
        </div>
    </div>
@endsection