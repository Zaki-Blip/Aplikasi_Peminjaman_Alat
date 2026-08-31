use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

public static function getEloquentQuery(): Builder
{
    $query = parent::getEloquentQuery();

    // Super Admin & Staff lihat semua tiket
    if (Auth::user()?->hasAnyRole(['super_admin', 'staff'])) {
        return $query;
    }

    // Student cuma lihat tiket yang dia buat sendiri
    return $query->where('user_id', Auth::id());
}
