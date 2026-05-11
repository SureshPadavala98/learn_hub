<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CandidatePlacement;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class CandidatePlacementController extends Controller
{
    public function index()
    {
        $placements = CandidatePlacement::with(['candidate', 'creator', 'updater'])
            ->latest()
            ->paginate(15);

        return view('admin.placements.index', compact('placements'));
    }

    public function create()
    {
        $candidates = User::orderBy('name')->get(['id', 'name', 'email']);

        return view('admin.placements.create', compact('candidates'));
    }

    public function store(Request $request)
    {
        $data = $this->validatedData($request);


        if ($request->hasFile('offer_letter_file')) {
            $data['offer_letter_file'] = file_upload($request->file('offer_letter_file'), 'uploads/offer_letters/');
        }

        $data['created_by'] = Auth::guard('admin')->id();
        $data['updated_by'] = Auth::guard('admin')->id();

        CandidatePlacement::create($data);

        return redirect()->route('admin.placements.index')->with([
            'messege' => __('Created successfully'),
            'alert-type' => 'success',
        ]);
    }

    public function edit(CandidatePlacement $placement)
    {
        $candidates = User::orderBy('name')->get(['id', 'name', 'email']);

        return view('admin.placements.edit', compact('placement', 'candidates'));
    }

    public function update(Request $request, CandidatePlacement $placement)
    {
        $data = $this->validatedData($request);

        if ($request->hasFile('offer_letter_file')) {
            $data['offer_letter_file'] = file_upload(
                $request->file('offer_letter_file'),
                'uploads/placement-offers/',
                $placement->offer_letter_file
            );
        }

        $data['updated_by'] = Auth::guard('admin')->id();

        $placement->update($data);

        return redirect()->route('admin.placements.index')->with([
            'messege' => __('Updated successfully'),
            'alert-type' => 'success',
        ]);
    }

    public function destroy(CandidatePlacement $placement)
    {
        if ($placement->offer_letter_file && File::exists(public_path($placement->offer_letter_file))) {
            File::delete(public_path($placement->offer_letter_file));
        }

        $placement->delete();

        return redirect()->route('admin.placements.index')->with([
            'messege' => __('Deleted successfully'),
            'alert-type' => 'success',
        ]);
    }

    private function validatedData(Request $request): array
    {
        return $request->validate([
            'candidate_id' => ['required', 'exists:users,id'],
            'company_name' => ['required', 'string', 'max:255'],
            'job_title' => ['nullable', 'string', 'max:255'],
            'employment_type' => ['nullable', 'in:full_time,part_time,contract,intern'],
            'work_mode' => ['nullable', 'in:remote,hybrid,onsite'],
            'package_ctc' => ['nullable', 'numeric', 'min:0', 'max:9999999999.99'],
            'monthly_salary' => ['nullable', 'numeric', 'min:0', 'max:9999999999.99'],
            'currency' => ['nullable', 'string', 'max:20'],
            'offer_letter_file' => ['nullable', 'file', 'mimes:pdf,doc,docx,jpg,jpeg,png', 'max:5120'],
            'offer_date' => ['nullable', 'date'],
            'joining_date' => ['nullable', 'date'],
            'placed_date' => ['nullable', 'date'],
            'location' => ['nullable', 'string', 'max:255'],
            'placement_status' => ['nullable', 'in:offered,accepted,rejected,joined'],
            'remarks' => ['nullable', 'string'],
        ]);
    }
}
