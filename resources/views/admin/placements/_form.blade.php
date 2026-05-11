@php
    $employmentTypes = [
        'full_time' => __('Full Time'),
        'part_time' => __('Part Time'),
        'contract' => __('Contract'),
        'intern' => __('Intern'),
    ];
    $workModes = [
        'remote' => __('Remote'),
        'hybrid' => __('Hybrid'),
        'onsite' => __('Onsite'),
    ];
    $placementStatuses = [
        'offered' => __('Offered'),
        'accepted' => __('Accepted'),
        'rejected' => __('Rejected'),
        'joined' => __('Joined'),
    ];
@endphp

<div class="row">
    <div class="form-group col-md-6">
        <label>{{ __('Candidate') }} <span class="text-danger">*</span></label>
        <select name="candidate_id" class="form-control select2 @error('candidate_id') is-invalid @enderror">
            <option value="">{{ __('Select Candidate') }}</option>
            @foreach ($candidates as $candidate)
                <option value="{{ $candidate->id }}" @selected(old('candidate_id', $placement->candidate_id ?? '') == $candidate->id)>
                    {{ $candidate->name }} - {{ $candidate->email }}
                </option>
            @endforeach
        </select>
        @error('candidate_id')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Company Name') }} <span class="text-danger">*</span></label>
        <input type="text" name="company_name" class="form-control @error('company_name') is-invalid @enderror"
            value="{{ old('company_name', $placement->company_name ?? '') }}">
        @error('company_name')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Job Title') }} <span class="text-danger">*</span></label>
        <input type="text" name="job_title" class="form-control @error('job_title') is-invalid @enderror" value="{{ old('job_title', $placement->job_title ?? '') }}">
        @error('job_title')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-3">
        <label>{{ __('Employment Type') }} <span class="text-danger">*</span></label>
        <select name="employment_type" class="form-control @error('employment_type') is-invalid @enderror">
            @foreach ($employmentTypes as $value => $label)
                <option value="{{ $value }}" @selected(old('employment_type', $placement->employment_type ?? 'full_time') == $value)>{{ $label }}</option>
            @endforeach
        </select>
        @error('employment_type')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-3">
        <label>{{ __('Work Mode') }} <span class="text-danger">*</span></label>
        <select name="work_mode" class="form-control @error('work_mode') is-invalid @enderror">
            @foreach ($workModes as $value => $label)
                <option value="{{ $value }}" @selected(old('work_mode', $placement->work_mode ?? 'onsite') == $value)>{{ $label }}</option>
            @endforeach
        </select>
        @error('work_mode')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Package CTC') }} <span class="text-danger">*</span></label>
        <input type="number" step="0.01" min="0" name="package_ctc" class="form-control @error('package_ctc') is-invalid @enderror"
            value="{{ old('package_ctc', $placement->package_ctc ?? '') }}">
        @error('package_ctc')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Monthly Salary') }} <span class="text-danger">*</span></label>
        <input type="number" step="0.01" min="0" name="monthly_salary" class="form-control @error('monthly_salary') is-invalid @enderror"
            value="{{ old('monthly_salary', $placement->monthly_salary ?? '') }}">
        @error('monthly_salary')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Currency') }} <span class="text-danger">*</span></label>
        <input type="text" name="currency" maxlength="20" class="form-control @error('currency') is-invalid @enderror"
            value="{{ old('currency', $placement->currency ?? 'INR') }}">
        @error('currency')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Offer Date') }} <span class="text-danger">*</span></label>
        <input type="date" name="offer_date" class="form-control @error('offer_date') is-invalid @enderror"
            value="{{ old('offer_date', isset($placement) && $placement->offer_date ? $placement->offer_date->format('Y-m-d') : '') }}">
        @error('offer_date')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Joining Date') }} <span class="text-danger">*</span></label>
        <input type="date" name="joining_date" class="form-control @error('joining_date') is-invalid @enderror"
            value="{{ old('joining_date', isset($placement) && $placement->joining_date ? $placement->joining_date->format('Y-m-d') : '') }}">
        @error('joining_date')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-4">
        <label>{{ __('Placed Date') }} <span class="text-danger">*</span></label>
        <input type="date" name="placed_date" class="form-control @error('placed_date') is-invalid @enderror"
            value="{{ old('placed_date', isset($placement) && $placement->placed_date ? $placement->placed_date->format('Y-m-d') : '') }}">
        @error('placed_date')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Location') }} <span class="text-danger">*</span></label>
        <input type="text" name="location" class="form-control @error('location') is-invalid @enderror" value="{{ old('location', $placement->location ?? '') }}">
        @error('location')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Placement Status') }} <span class="text-danger">*</span></label>
        <select name="placement_status" class="form-control @error('placement_status') is-invalid @enderror">
            @foreach ($placementStatuses as $value => $label)
                <option value="{{ $value }}" @selected(old('placement_status', $placement->placement_status ?? 'offered') == $value)>{{ $label }}</option>
            @endforeach
        </select>
        @error('placement_status')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-12">
        <label>{{ __('Offer Letter File') }} @if (empty($placement)) <span class="text-danger">*</span> @endif</label>
        <input type="file" name="offer_letter_file" class="form-control @error('offer_letter_file') is-invalid @enderror">
        @error('offer_letter_file')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
        @if (!empty($placement?->offer_letter_file))
            <div class="mt-2">
                <a href="{{ asset($placement->offer_letter_file) }}" target="_blank">{{ __('View current file') }}</a>
            </div>
        @endif
    </div>

    <div class="form-group col-md-12">
        <label>{{ __('Remarks') }} <span class="text-danger">*</span></label>
        <textarea name="remarks" class="form-control text-area-5 @error('remarks') is-invalid @enderror" rows="5">{{ old('remarks', $placement->remarks ?? '') }}</textarea>
        @error('remarks')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
</div>
