@extends('admin.master_layout')

@section('title')
    <title>{{ __('Manage Certificates') }}</title>
@endsection

@section('admin-content')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Manage Certificates') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Certificates') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <h4>{{ __('Certificates') }}</h4>
                                <a href="{{ route('admin.certificates.create') }}" class="btn btn-primary">
                                    <i class="fa fa-plus"></i> {{ __('Add New') }}
                                </a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>{{ __('SN') }}</th>
                                                <th>{{ __('Certificate ID') }}</th>
                                                <th>{{ __('Candidate') }}</th>
                                                <th>{{ __('Certificate Name') }}</th>
                                                <th>{{ __('Issued Date') }}</th>
                                                <th>{{ __('File') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($certificates as $index => $certificate)
                                                <tr>
                                                    <td>{{ $certificates->firstItem() + $index }}</td>
                                                    <td>{{ $certificate->certificate_code }}</td>
                                                    <td>
                                                        {{ $certificate->candidate?->name ?? __('Candidate') . ' #' . $certificate->candidate_id }}
                                                        <br>
                                                        <small>{{ $certificate->candidate?->email }}</small>
                                                    </td>
                                                    <td>{{ $certificate->certificate_name }}</td>
                                                    <td>{{ $certificate->issue_date?->format('d M Y') ?? '-' }}</td>
                                                    <td>
                                                        <a href="{{ asset($certificate->certificate_file) }}" target="_blank">{{ __('View') }}</a>
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.certificates.edit', $certificate->id) }}" class="btn btn-warning btn-sm">
                                                            <i class="fa fa-edit"></i>
                                                        </a>
                                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal"
                                                            class="btn btn-danger btn-sm" onclick="deleteData({{ $certificate->id }})">
                                                            <i class="fa fa-trash"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="7" class="text-center">{{ __('No certificate records found.') }}</td>
                                                </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="float-right">
                                        {{ $certificates->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <x-admin.delete-modal />
@endsection

@push('js')
    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", "{{ url('admin/certificates') }}" + "/" + id)
        }
    </script>
@endpush
