<div class="row">
    <div class="form-group col-md-6">
        <label>{{ __('Candidate') }} <span class="text-danger">*</span></label>
        <select name="candidate_id" class="form-control select2 @error('candidate_id') is-invalid @enderror">
            <option value="">{{ __('Select Candidate') }}</option>
            @foreach ($candidates as $candidate)
                <option value="{{ $candidate->id }}" @selected(old('candidate_id', $certificate->candidate_id ?? '') == $candidate->id)>
                    {{ $candidate->name }} - {{ $candidate->email }}
                </option>
            @endforeach
        </select>
        @error('candidate_id')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Certificate ID') }}</label>
        <input type="text" class="form-control" value="{{ old('certificate_id', $certificate->certificate_code ?? $nextCertificateId ?? '') }}" readonly>
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Certificate Name') }} <span class="text-danger">*</span></label>
        <input type="text" name="certificate_name" class="form-control @error('certificate_name') is-invalid @enderror"
            value="{{ old('certificate_name', $certificate->certificate_name ?? '') }}">
        @error('certificate_name')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-6">
        <label>{{ __('Issued Date') }} <span class="text-danger">*</span></label>
        <input type="date" name="issue_date" class="form-control @error('issue_date') is-invalid @enderror"
            value="{{ old('issue_date', isset($certificate) && $certificate->issue_date ? $certificate->issue_date->format('Y-m-d') : '') }}">
        @error('issue_date')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group col-md-12">
        <label>{{ __('Certificate File') }} @if (empty($certificate)) <span class="text-danger">*</span> @endif</label>
        <input type="file" name="certificate_file" class="form-control @error('certificate_file') is-invalid @enderror">
        @error('certificate_file')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
        @if (!empty($certificate?->certificate_file))
            <div class="mt-2">
                <a href="{{ asset($certificate->certificate_file) }}" target="_blank">{{ __('View current file') }}</a>
            </div>
        @endif
    </div>
</div>
