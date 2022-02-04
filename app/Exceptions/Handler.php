<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

//     public function render($request, Exception $exception)
// {
//     // This will replace our 404 response with
//     // a JSON response.
//     if ($exception instanceof ModelNotFoundException) {
//         return response()->json([
//             'error' => 'Resource not found'
//         ], 404);
//     }

//     return parent::render($request, $exception);
// }
}
