<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CandidatePlacement;

class PlacementController extends Controller
{
    public function index()
    {
        $placements = CandidatePlacement::with('candidate')->latest()->paginate(10);

        return view('frontend.pages.placements', compact('placements'));
    }
}
