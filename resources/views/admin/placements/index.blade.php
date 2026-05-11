@extends('admin.master_layout')

@section('title')
    <title>{{ __('Manage Placement Students') }}</title>
@endsection

@section('admin-content')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Manage Placement Students') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Placement Students') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <h4>{{ __('Placement Students') }}</h4>
                                <a href="{{ route('admin.placements.create') }}" class="btn btn-primary">
                                    <i class="fa fa-plus"></i> {{ __('Add New') }}
                                </a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>{{ __('SN') }}</th>
                                                <th>{{ __('Candidate') }}</th>
                                                <th>{{ __('Company') }}</th>
                                                <th>{{ __('Job Title') }}</th>
                                                <th>{{ __('Employment') }}</th>
                                                <th>{{ __('Work Mode') }}</th>
                                                <th>{{ __('Package CTC') }}</th>
                                                <th>{{ __('Monthly Salary') }}</th>
                                                <th>{{ __('Status') }}</th>
                                                <th>{{ __('Placed Date') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($placements as $index => $placement)
                                                <tr>
                                                    <td>{{ $placements->firstItem() + $index }}</td>
                                                    <td>
                                                        {{ $placement->candidate?->name ?? __('Candidate') . ' #' . $placement->candidate_id }}
                                                        <br>
                                                        <small>{{ $placement->candidate?->email }}</small>
                                                    </td>
                                                    <td>{{ $placement->company_name }}</td>
                                                    <td>{{ $placement->job_title ?? '-' }}</td>
                                                    <td>{{ ucfirst(str_replace('_', ' ', $placement->employment_type ?? '-')) }}</td>
                                                    <td>{{ ucfirst($placement->work_mode ?? '-') }}</td>
                                                    <td>{{ ! is_null($placement->package_ctc) ? $placement->currency . ' ' . number_format($placement->package_ctc, 2) : '-' }}</td>
                                                    <td>{{ ! is_null($placement->monthly_salary) ? $placement->currency . ' ' . number_format($placement->monthly_salary, 2) : '-' }}</td>
                                                    <td>
                                                        <span class="badge badge-{{ in_array($placement->placement_status, ['accepted', 'joined']) ? 'success' : ($placement->placement_status == 'rejected' ? 'danger' : 'warning') }}">
                                                            {{ ucfirst($placement->placement_status ?? '-') }}
                                                        </span>
                                                    </td>
                                                    <td>{{ $placement->placed_date?->format('d M Y') ?? '-' }}</td>
                                                    <td>
                                                        <a href="{{ route('admin.placements.edit', $placement->id) }}" class="btn btn-warning btn-sm">
                                                            <i class="fa fa-edit"></i>
                                                        </a>
                                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal"
                                                            class="btn btn-danger btn-sm" onclick="deleteData({{ $placement->id }})">
                                                            <i class="fa fa-trash"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="11" class="text-center">{{ __('No placement records found.') }}</td>
                                                </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="float-right">
                                        {{ $placements->links() }}
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
            $("#deleteForm").attr("action", "{{ url('admin/placements') }}" + "/" + id)
        }
    </script>
@endpush
