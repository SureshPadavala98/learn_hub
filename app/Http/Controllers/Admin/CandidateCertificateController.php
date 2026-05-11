<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CandidateCertificate;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class CandidateCertificateController extends Controller
{
    public function index()
    {
        $certificates = CandidateCertificate::with(['candidate', 'creator', 'updater'])
            ->latest()
            ->paginate(15);

        return view('admin.certificates.index', compact('certificates'));
    }

    public function create()
    {
        $candidates = User::orderBy('name')->get(['id', 'name', 'email']);
        $nextCertificateId = $this->generateCertificateId();

        return view('admin.certificates.create', compact('candidates', 'nextCertificateId'));
    }

    public function store(Request $request)
    {
        $data = $this->validatedData($request);

        $data['certificate_code'] = $this->generateCertificateId();
        $data['certificate_file'] = file_upload($request->file('certificate_file'), 'uploads/certificates/');
        $data['created_by'] = Auth::guard('admin')->id();
        $data['updated_by'] = Auth::guard('admin')->id();

        CandidateCertificate::create($data);

        return redirect()->route('admin.certificates.index')->with([
            'messege' => __('Created successfully'),
            'alert-type' => 'success',
        ]);
    }

    public function edit(CandidateCertificate $certificate)
    {
        $candidates = User::orderBy('name')->get(['id', 'name', 'email']);

        return view('admin.certificates.edit', compact('certificate', 'candidates'));
    }

    public function update(Request $request, CandidateCertificate $certificate)
    {
        $data = $this->validatedData($request, $certificate);

        if ($request->hasFile('certificate_file')) {
            $data['certificate_file'] = file_upload(
                $request->file('certificate_file'),
                'uploads/certificates/',
                $certificate->certificate_file
            );
        }

        $data['updated_by'] = Auth::guard('admin')->id();

        $certificate->update($data);

        return redirect()->route('admin.certificates.index')->with([
            'messege' => __('Updated successfully'),
            'alert-type' => 'success',
        ]);
    }

    public function destroy(CandidateCertificate $certificate)
    {
        if ($certificate->certificate_file && File::exists(public_path($certificate->certificate_file))) {
            File::delete(public_path($certificate->certificate_file));
        }

        $certificate->delete();

        return redirect()->route('admin.certificates.index')->with([
            'messege' => __('Deleted successfully'),
            'alert-type' => 'success',
        ]);
    }

    private function validatedData(Request $request, ?CandidateCertificate $certificate = null): array
    {
        return $request->validate([
            'candidate_id' => ['required', 'exists:users,id'],
            'certificate_name' => ['required', 'string', 'max:255'],
            'issue_date' => ['required', 'date'],
            'certificate_file' => [
                $certificate ? 'nullable' : 'required',
                'file',
                'mimes:pdf,doc,docx,jpg,jpeg,png',
                'max:5120',
            ],
        ]);
    }

    private function generateCertificateId(): string
    {
        $nextNumber = ((int) CandidateCertificate::max('id')) + 1;

        do {
            $certificateId = 'LEARN' . str_pad((string) $nextNumber, 5, '0', STR_PAD_LEFT);
            $nextNumber++;
        } while (CandidateCertificate::where('certificate_code', $certificateId)->exists());

        return $certificateId;
    }
}
