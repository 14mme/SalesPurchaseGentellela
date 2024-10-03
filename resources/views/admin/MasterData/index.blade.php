@extends('admin.layouts.admin')

@section('title', __('views.admin.MasterData.index.title'))

@section('content')
    <div class="row">
        <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
               width="100%">
            <thead>
            <tr>
                <th>@sortablelink('Kode_Pelanggan', __('views.admin.MasterData.index.table_header_0'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('Nama',  __('views.admin.MasterData.index.table_header_1'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('Alamat', __('views.admin.MasterData.index.table_header_2'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('Telepon', __('views.admin.MasterData.index.table_header_3'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('Jumlah_Transaksi', __('views.admin.MasterData.index.table_header_4'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('Total', __('views.admin.MasterData.index.table_header_5'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('created_at', __('views.admin.MasterData.index.table_header_6'),['page' => $MasterData->currentPage()])</th>
                <th>@sortablelink('updated_at', __('views.admin.MasterData.index.table_header_7'),['page' => $MasterData->currentPage()])</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($MasterData as $customer)
                <tr>
                    <td>{{ $customer->Kode_Pelanggan }}</td>
                    <td>{{ $customer->Nama }}</td>
                    <td>{{ $customer->Alamat }}</td>
                    <td>{{ $customer->Telepon }}</td>
                    <td>{{ $customer->Jumlah_Transaksi }}</td>
                    <td>{{ $customer->Total }}</td>
                    <td>{{ $customer->created_at }}</td>
                    <td>{{ $customer->updated_at }}</td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="{{ route('admin.MasterData.show', [$customer->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.MasterData.index.show') }}">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a class="btn btn-xs btn-info" href="{{ route('admin.MasterData.edit', [$customer->id]) }}" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.MasterData.index.edit') }}">
                            <i class="fa fa-pencil"></i>
                        </a>
                        <a href="{{ route('admin.MasterData.destroy', [$customer->id]) }}" class="btn btn-xs btn-danger user_destroy" data-toggle="tooltip" data-placement="top" data-title="{{ __('views.admin.MasterData.index.delete') }}">
                            <i class="fa fa-trash"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pull-right">
            {{ $MasterData->links() }}
        </div>
    </div>
@endsection