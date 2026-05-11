<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class CandidateCertificate extends Model
{
    use HasFactory;

    protected $fillable = [
        'candidate_id',
        'certificate_name',
        'certificate_code',
        'certificate_file',
        'issue_date',
        'created_by',
        'updated_by',
    ];

    protected $casts = [
        'issue_date' => 'date',
    ];

    public function candidate(): BelongsTo
    {
        return $this->belongsTo(User::class, 'candidate_id');
    }

    public function creator(): BelongsTo
    {
        return $this->belongsTo(Admin::class, 'created_by');
    }

    public function updater(): BelongsTo
    {
        return $this->belongsTo(Admin::class, 'updated_by');
    }
}
