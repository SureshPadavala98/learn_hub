<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class CandidatePlacement extends Model
{
    use HasFactory;

    protected $table = 'candidate_placements';

    protected $fillable = [
        'candidate_id',
        'company_name',
        'job_title',
        'employment_type',
        'work_mode',
        'package_ctc',
        'monthly_salary',
        'currency',
        'offer_letter_file',
        'offer_date',
        'joining_date',
        'placed_date',
        'location',
        'placement_status',
        'remarks',
        'created_by',
        'updated_by',
    ];

    protected $casts = [
        'package_ctc' => 'decimal:2',
        'monthly_salary' => 'decimal:2',
        'offer_date' => 'date',
        'joining_date' => 'date',
        'placed_date' => 'date',
    ];

    public function candidate(): BelongsTo
    {
        return $this->belongsTo(User::class, 'candidate_id');
    }
}
