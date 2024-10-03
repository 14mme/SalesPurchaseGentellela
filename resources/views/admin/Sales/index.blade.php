@extends('admin.layouts.admin')

@section('title', __('views.admin.Sales.index.title'))

@section('content')
    <div class="row">
        <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
               width="100%">
            <thead>
            <tr>
                <th>@sortablelink('No_Transaksi', __('views.admin.Sales.index.table_header_0'),['page' => $Sales->currentPage()])</th>
                <th>@sortablelink('Tanggal',  __('views.admin.Sales.index.table_header_1'),['page' => $Sales->currentPage()])</th>
                <th>@sortablelink('Nama', __('views.admin.Sales.index.table_header_2'),['page' => $Sales->currentPage()])</th>
                <th>@sortablelink('Total', __('views.admin.Sales.index.table_header_3'),['page' => $Sales->currentPage()])</th>
                <th>@sortablelink('created_at', __('views.admin.Sales.index.table_header_4'),['page' => $Sales->currentPage()])</th>
                <th>@sortablelink('updated_at', __('views.admin.Sales.index.table_header_5'),['page' => $Sales->currentPage()])</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($Sales as $sale)
                <tr>
                    <td>{{ $sale->No_Transaksi }}</td>
                    <td>{{ $sale->Tanggal }}</td>
                    <td>{{ $sale->Nama }}</td>
                    <td>{{ $sale->Total }}</td>
                    <td>{{ $sale->created_at }}</td>
                    <td>{{ $sale->updated_at }}</td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="{{ route('admin.Sales.show', [$sale->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Sales.index.show') }}">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a class="btn btn-xs btn-info" href="{{ route('admin.Sales.edit', [$sale->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Sales.index.edit') }}">
                            <i class="fa fa-pencil"></i>
                        </a>
                        <a href="{{ route('admin.Sales.destroy', [$sale->id]) }}" class="btn btn-xs btn-danger user_destroy" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.Sales.index.delete') }}">
                            <i class="fa fa-trash"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pull-right">
            {{ $Sales->links() }}
        </div>
    </div>
@endsection