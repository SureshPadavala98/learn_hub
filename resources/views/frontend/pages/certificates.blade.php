@extends('frontend.layouts.master')

@section('meta_title', __('Certificates'))
@section('meta_description', __('Candidate certificates and verification details.'))

@section('contents')
    <x-frontend.breadcrumb :title="__('Certificates')" :links="[['url' => route('home'), 'text' => __('Home')], ['url' => '', 'text' => __('Certificates')]]" />

    <section class="certificates-area section-py-120">
        <div class="container">
            <div class="row align-items-center mb-45">
                <div class="col-lg-7">
                    <div class="section__title">
                        <span class="sub-title">{{ __('Learning Records') }}</span>
                        <h2 class="title">{{ __('Certificates') }}</h2>
                        <p>{{ __('Search and view issued certificates by candidate ID or certificate ID.') }}</p>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="certificates-summary">
                        <span>{{ __('Certificate Records') }}</span>
                        <h4>{{ __('Total Certificates') }}: {{ $certificates->total() }}</h4>
                    </div>
                </div>
            </div>

            <div class="certificates-search">
                <form action="{{ route('certificates.index') }}" method="GET">
                    <div class="certificates-search__field">
                        <input type="text" name="search" value="{{ $search }}"
                            placeholder="{{ __('Search by Candidate ID or Certificate ID') }}">
                        <button type="submit"><i class="fas fa-search"></i> {{ __('Search') }}</button>
                    </div>
                    @if ($search)
                        <a href="{{ route('certificates.index') }}">{{ __('Clear Search') }}</a>
                    @endif
                </form>
            </div>

            <div class="row certificates-grid">
                @forelse ($certificates as $certificate)
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="certificate-card">
                            <div class="certificate-card__top">
                                <span>{{ $certificate->certificate_code ?? '-' }}</span>
                                <i class="fas fa-certificate"></i>
                            </div>
                            <h4>{{ $certificate->certificate_name }}</h4>
                            <ul>
                                <li>
                                    <span>{{ __('Candidate ID') }}</span>
                                    <strong>{{ $certificate->candidate_id }}</strong>
                                </li>
                                <li>
                                    <span>{{ __('Candidate') }}</span>
                                    <strong>{{ $certificate->candidate?->name ?? '-' }}</strong>
                                </li>
                                <li>
                                    <span>{{ __('Issued Date') }}</span>
                                    <strong>{{ $certificate->issue_date?->format('d M Y') ?? '-' }}</strong>
                                </li>
                            </ul>
                            @if ($certificate->certificate_file)
                                <a href="{{ asset($certificate->certificate_file) }}" target="_blank" class="certificate-card__link">
                                    {{ __('View Certificate') }} <i class="fas fa-arrow-right"></i>
                                </a>
                            @endif
                        </div>
                    </div>
                @empty
                    <div class="col-12">
                        <div class="certificates-empty">
                            {{ __('No certificate records found.') }}
                        </div>
                    </div>
                @endforelse
            </div>

            @if ($certificates->hasPages())
                <div class="certificates-pagination">
                    {{ $certificates->links() }}
                </div>
            @endif
        </div>
    </section>
@endsection

@push('styles')
    <style>
        .certificates-area .section__title p {
            max-width: 680px;
        }

        .certificates-summary,
        .certificates-search,
        .certificate-card,
        .certificates-empty {
            background: var(--tg-common-color-white);
            border: 1px solid #e6e3f1;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(31, 23, 60, 0.06);
        }

        .certificates-summary {
            padding: 28px 30px;
        }

        .certificates-summary span {
            display: block;
            color: var(--tg-theme-primary);
            font-weight: 600;
            margin-bottom: 8px;
        }

        .certificates-summary h4 {
            font-size: 22px;
            margin-bottom: 0;
        }

        .certificates-search {
            padding: 22px;
            margin-bottom: 30px;
        }

        .certificates-search form {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .certificates-search__field {
            display: flex;
            flex: 1;
            min-width: 0;
        }

        .certificates-search input {
            width: 100%;
            height: 54px;
            padding: 0 18px;
            border: 1px solid #e6e3f1;
            border-radius: 8px 0 0 8px;
            color: var(--tg-heading-color);
        }

        .certificates-search button {
            min-width: 145px;
            height: 54px;
            border: 0;
            border-radius: 0 8px 8px 0;
            background: var(--tg-theme-primary);
            color: var(--tg-common-color-white);
            font-weight: 700;
        }

        .certificates-search a,
        .certificate-card__link {
            color: var(--tg-theme-primary);
            font-weight: 700;
        }

        .certificates-grid {
            row-gap: 24px;
        }

        .certificate-card {
            height: 100%;
            padding: 24px;
        }

        .certificate-card__top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .certificate-card__top span {
            display: inline-flex;
            align-items: center;
            min-height: 30px;
            padding: 5px 12px;
            border-radius: 6px;
            background: #f8f8ff;
            color: var(--tg-theme-primary);
            font-size: 13px;
            font-weight: 800;
        }

        .certificate-card__top i {
            color: var(--tg-theme-primary);
            font-size: 26px;
        }

        .certificate-card h4 {
            min-height: 58px;
            margin-bottom: 18px;
            font-size: 20px;
            line-height: 1.45;
        }

        .certificate-card ul {
            padding: 0;
            margin: 0 0 22px;
            list-style: none;
        }

        .certificate-card li {
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            border-bottom: 1px solid #eeeef6;
        }

        .certificate-card li span {
            color: var(--tg-body-color);
            font-size: 14px;
        }

        .certificate-card li strong {
            color: var(--tg-heading-color);
            font-size: 14px;
            text-align: right;
            word-break: break-word;
        }

        .certificates-empty {
            padding: 36px;
            text-align: center;
            color: var(--tg-body-color);
            font-weight: 600;
        }

        .certificates-pagination {
            margin-top: 30px;
        }

        @media (max-width: 767.98px) {
            .certificates-summary {
                margin-top: 20px;
                padding: 24px;
            }

            .certificates-search form,
            .certificates-search__field {
                flex-direction: column;
                align-items: stretch;
            }

            .certificates-search input,
            .certificates-search button {
                width: 100%;
                border-radius: 8px;
            }
        }
    </style>
@endpush
