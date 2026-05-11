<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CandidateCertificate;
use Illuminate\Http\Request;

class CertificateController extends Controller
{
    public function index(Request $request)
    {
        $search = trim((string) $request->query('search'));

        $certificates = CandidateCertificate::with('candidate')
            ->when($search, function ($query) use ($search) {
                $query->where('candidate_id', $search)
                    ->orWhere('certificate_code', 'like', "%{$search}%");
            })
            ->latest()
            ->paginate(12)
            ->withQueryString();

        return view('frontend.pages.certificates', compact('certificates', 'search'));
    }
}
