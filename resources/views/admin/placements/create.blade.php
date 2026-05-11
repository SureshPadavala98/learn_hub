@extends('admin.master_layout')

@section('title')
    <title>{{ __('Add Placement Student') }}</title>
@endsection

@section('admin-content')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <div class="section-header-back">
                    <a href="{{ route('admin.placements.index') }}" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
                </div>
                <h1>{{ __('Add Placement Student') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></div>
                    <div class="breadcrumb-item active"><a href="{{ route('admin.placements.index') }}">{{ __('Placement Students') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Add New') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <h4>{{ __('Placement Information') }}</h4>
                                <a href="{{ route('admin.placements.index') }}" class="btn btn-primary">
                                    <i class="fa fa-arrow-left"></i> {{ __('Back') }}
                                </a>
                            </div>
                            <div class="card-body">
                                <form action="{{ route('admin.placements.store') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @include('admin.placements._form', ['placement' => null])
                                    <div class="text-center">
                                        <x-admin.save-button :text="__('Save')"></x-admin.save-button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
