<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Medication extends Model
{
    use HasFactory;
      public function medicationDetails()
      {
          return $this->hasMany(MedicationDetails::class);
      }

      public function user()
      {
          return $this->belongsTo(User::class);
      }
}
