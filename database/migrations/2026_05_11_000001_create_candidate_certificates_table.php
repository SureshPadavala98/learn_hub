<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        if (Schema::hasTable('candidate_certificates')) {
            Schema::table('candidate_certificates', function (Blueprint $table) {
                if (! Schema::hasColumn('candidate_certificates', 'certificate_code')) {
                    $table->string('certificate_code', 150)->nullable()->after('certificate_name');
                }

                if (! Schema::hasColumn('candidate_certificates', 'certificate_file')) {
                    $table->string('certificate_file', 500)->nullable()->after('certificate_code');
                }

                if (! Schema::hasColumn('candidate_certificates', 'issue_date')) {
                    $table->date('issue_date')->nullable()->after('certificate_file');
                }

                if (! Schema::hasColumn('candidate_certificates', 'created_by')) {
                    $table->foreignId('created_by')->nullable()->after('issue_date');
                }

                if (! Schema::hasColumn('candidate_certificates', 'updated_by')) {
                    $table->foreignId('updated_by')->nullable()->after('created_by');
                }
            });

            return;
        }

        Schema::create('candidate_certificates', function (Blueprint $table) {
            $table->id();
            $table->foreignId('candidate_id')->constrained('users')->cascadeOnDelete();
            $table->string('certificate_name');
            $table->string('certificate_code', 150)->unique();
            $table->string('certificate_file', 500);
            $table->date('issue_date');
            $table->foreignId('created_by')->nullable()->constrained('admins')->nullOnDelete();
            $table->foreignId('updated_by')->nullable()->constrained('admins')->nullOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('candidate_certificates');
    }
};
