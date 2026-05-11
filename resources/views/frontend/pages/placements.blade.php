@extends('frontend.layouts.master')

@section('meta_title', __('Placements'))
@section('meta_description', __('Placement information and offer details.'))

@section('contents')
    <x-frontend.breadcrumb :title="__('Your Placements')" :links="[['url' => route('home'), 'text' => __('Home')], ['url' => '', 'text' => __('Your Placements')]]" />

    <section class="placements-area section-py-120">
        <div class="container">
            <div class="row align-items-center mb-45">
                <div class="col-lg-7">
                    <div class="section__title">
                        <span class="sub-title">{{ __('Career Progress') }}</span>
                        <h2 class="title">{{ __('Your Placements') }}</h2>
                        <p>{{ __('Track placement records, offer information, salary details, joining dates, and current placement status in one clear view.') }}</p>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="placements-summary">
                        <span>{{ __('Placement Records') }}</span>
                        <h4>{{ __('Total Placements') }}: {{ $placements->total() }}</h4>
                    </div>
                </div>
            </div>

            <div class="placements-panel">
                <div class="table-responsive placements-table-wrap">
                    <table class="table placements-table align-middle">
                        <thead>
                            <tr>
                                <th>{{ __('#') }}</th>
                                <th>{{ __('Candidate ID') }}</th>
                                <th>{{ __('Candidate Name') }}</th>
                                <th>{{ __('Company') }}</th>
                                <th>{{ __('Job Title') }}</th>
                                <!-- <th>{{ __('Employment') }}</th> -->
                                <!-- <th>{{ __('Work Mode') }}</th> -->
                                <th>{{ __('Package CTC') }}</th>
                                <!-- <th>{{ __('Monthly Salary') }}</th> -->
                                <!-- <th>{{ __('Currency') }}</th> -->
                                <th>{{ __('Offer Letter') }}</th>
                                <th>{{ __('Offer Date') }}</th>
                                <th>{{ __('Joining Date') }}</th>
                                <!-- <th>{{ __('Placed Date') }}</th> -->
                                <th>{{ __('Location') }}</th>
                                <!-- <th>{{ __('Status') }}</th>
                                <th>{{ __('Remarks') }}</th>
                                <th>{{ __('Created By') }}</th>
                                <th>{{ __('Updated By') }}</th>
                                <th>{{ __('Created At') }}</th>
                                <th>{{ __('Updated At') }}</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($placements as $placement)
                                <tr>
                                    <td>{{ $placement->id }}</td>
                                    <td>{{ $placement->candidate_id }}</td>
                                    <td>{{ $placement->candidate?->name ?? '-' }}</td>
                                    <td>{{ $placement->company_name }}</td>
                                    <td>{{ $placement->job_title ?? '-' }}</td>
                                    <!-- <td>{{ ucfirst(str_replace('_', ' ', $placement->employment_type ?? '-')) }}</td> -->
                                    <!-- <td>{{ ucfirst($placement->work_mode ?? '-') }}</td> -->
                                    <td>{{ ! is_null($placement->package_ctc) ? number_format($placement->package_ctc, 2) : '-' }}</td>
                                    <!-- <td>{{ ! is_null($placement->monthly_salary) ? number_format($placement->monthly_salary, 2) : '-' }}</td> -->
                                    <!-- <td>{{ $placement->currency ?? '-' }}</td> -->
                                    <td>
                                        @if ($placement->offer_letter_file)
                                            <a href="{{ asset($placement->offer_letter_file) }}" target="_blank">{{ __('View') }}</a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                    <td>{{ $placement->offer_date?->format('d M Y') ?? '-' }}</td>
                                    <td>{{ $placement->joining_date?->format('d M Y') ?? '-' }}</td>
                                    <!-- <td>{{ $placement->placed_date?->format('d M Y') ?? '-' }}</td> -->
                                    <td>{{ $placement->location ?? '-' }}</td>
                                    <!-- <td>
                                        <span class="placement-status placement-status-{{ $placement->placement_status }}">
                                            {{ ucfirst($placement->placement_status ?? '-') }}
                                        </span>
                                    </td>
                                    <td>{{ $placement->remarks ?? '-' }}</td>
                                    <td>{{ $placement->created_by ?? '-' }}</td>
                                    <td>{{ $placement->updated_by ?? '-' }}</td>
                                    <td>{{ $placement->created_at?->format('d M Y, h:i A') ?? '-' }}</td>
                                    <td>{{ $placement->updated_at?->format('d M Y, h:i A') ?? '-' }}</td> -->
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="20" class="text-center">{{ __('No placement records found.') }}</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                @if ($placements->hasPages())
                    <div class="placements-pagination">
                        {{ $placements->links() }}
                    </div>
                @endif
            </div>
        </div>
    </section>
@endsection

@push('styles')
    <style>
        .placements-area .section__title p {
            max-width: 680px;
        }

        .placements-summary,
        .placements-panel {
            background: var(--tg-common-color-white);
            border: 1px solid #e6e3f1;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(31, 23, 60, 0.06);
        }

        .placements-summary {
            padding: 28px 30px;
        }

        .placements-summary span {
            display: block;
            color: var(--tg-theme-primary);
            font-weight: 600;
            margin-bottom: 8px;
        }

        .placements-summary h4 {
            font-size: 22px;
            margin-bottom: 0;
        }

        .placements-panel {
            padding: 30px;
        }

        .placements-table-wrap {
            border: 1px solid #e6e3f1;
            border-radius: 8px;
        }

        .placements-table {
            min-width: 1800px;
            margin-bottom: 0;
        }

        .placements-table thead th {
            padding: 16px 18px;
            background: #f8f8ff;
            color: var(--tg-heading-color);
            font-size: 14px;
            font-weight: 700;
            white-space: nowrap;
            border-bottom: 1px solid #e6e3f1;
        }

        .placements-table tbody td {
            padding: 16px 18px;
            color: var(--tg-body-color);
            font-size: 14px;
            white-space: nowrap;
            border-bottom: 1px solid #eeeef6;
        }

        .placements-table tbody tr:last-child td {
            border-bottom: 0;
        }

        .placements-table a {
            color: var(--tg-theme-primary);
            font-weight: 600;
        }

        .placement-status {
            display: inline-flex;
            align-items: center;
            min-height: 28px;
            padding: 4px 12px;
            border-radius: 6px;
            background: #f8f8ff;
            color: var(--tg-theme-primary);
            font-size: 13px;
            font-weight: 700;
            text-transform: capitalize;
        }

        .placement-status-accepted,
        .placement-status-joined {
            background: #e8f7ef;
            color: #18834f;
        }

        .placement-status-rejected {
            background: #fff0f0;
            color: #d33d3d;
        }

        .placements-pagination {
            margin-top: 24px;
        }

        @media (max-width: 767.98px) {
            .placements-summary {
                margin-top: 20px;
                padding: 24px;
            }

            .placements-panel {
                padding: 20px;
            }
        }
    </style>
@endpush
