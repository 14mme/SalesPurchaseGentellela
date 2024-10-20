<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


/**
 * Auth routes
 */
Route::group(['namespace' => 'Auth'], function () {

    // Authentication Routes...
    Route::get('login', 'LoginController@showLoginForm')->name('login');
    Route::post('login', 'LoginController@login');
    Route::get('logout', 'LoginController@logout')->name('logout');

    // Registration Routes...
    if (config('auth.users.registration')) {
        Route::get('register', 'RegisterController@showRegistrationForm')->name('register');
        Route::post('register', 'RegisterController@register');
    }

    // Password Reset Routes...
    Route::get('password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
    Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
    Route::get('password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
    Route::post('password/reset', 'ResetPasswordController@reset');

    // Confirmation Routes...
    if (config('auth.users.confirm_email')) {
        Route::get('confirm/{user_by_code}', 'ConfirmController@confirm')->name('confirm');
        Route::get('confirm/resend/{user_by_email}', 'ConfirmController@sendEmail')->name('confirm.send');
    }

    // Social Authentication Routes...
    Route::get('social/redirect/{provider}', 'SocialLoginController@redirect')->name('social.redirect');
    Route::get('social/login/{provider}', 'SocialLoginController@login')->name('social.login');
});

/**
 * Backend routes
 */
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => 'admin'], function () {

    // Dashboard
    Route::get('/', 'DashboardController@index')->name('dashboard');

    //Users
    Route::get('users', 'UserController@index')->name('users');
    Route::get('users/restore', 'UserController@restore')->name('users.restore');
    Route::get('users/{id}/restore', 'UserController@restoreUser')->name('users.restore-user');
    Route::get('users/{user}', 'UserController@show')->name('users.show');
    Route::get('users/{user}/edit', 'UserController@edit')->name('users.edit');
    Route::put('users/{user}', 'UserController@update')->name('users.update');
    Route::any('users/{id}/destroy', 'UserController@destroy')->name('users.destroy');
    Route::get('permissions', 'PermissionController@index')->name('permissions');
    Route::get('permissions/{user}/repeat', 'PermissionController@repeat')->name('permissions.repeat');
    Route::get('dashboard/log-chart', 'DashboardController@getLogChartData')->name('dashboard.log.chart');
    Route::get('dashboard/registration-chart', 'DashboardController@getRegistrationChartData')->name('dashboard.registration.chart');
    Route::get('Sales', 'SalesPurchaseController@getSalesList')->name('Sales');
    Route::get('Sales/{id}', 'SalesPurchaseController@getSalesShow')->name('Sales.show');
    Route::get('Sales/{id}/edit', 'SalesPurchaseController@getSalesEdit')->name('Sales.edit');
    Route::get('Sales/{id}/destroy', 'SalesPurchaseController@getSalesDestroy')->name('Sales.destroy');
    Route::get('Purchase', 'SalesPurchaseController@getPurchasingList')->name('Purchasing');
    Route::get('Purchase/{id}', 'SalesPurchaseController@getPurchasingShow')->name('Purchasing.show');
    Route::get('Purchase/{id}/edit', 'SalesPurchaseController@getPurchasingEdit')->name('Purchasing.edit');
    Route::get('Purchase/{id}/destroy', 'SalesPurchaseController@getPurchasingDestroy')->name('Purchasing.destroy');
    Route::get('MasterData', 'SalesPurchaseController@getMasterDataList')->name('MasterData');
    Route::get('MasterData/{id}', 'SalesPurchaseController@getMasterDataShow')->name('MasterData.show');
    Route::get('MasterData/{id}/edit', 'SalesPurchaseController@getMasterDataEdit')->name('MasterData.edit');
    Route::get('MasterData/{id}/destroy', 'SalesPurchaseController@getMasterDataDestroy')->name('MasterData.destroy');
    
    Route::get('reporting', 'DashboardController@getReportingPage')->name('reporting');
    Route::get('reporting/data-grouping','DashboardController@getReportingcustomerGrouping')->name('reporting.grouping');
    Route::get('reporting/customer-all-data', 'DashboardController@getDataAllMasterData')->name('reporting.customer.all.data');
});


Route::get('/', 'HomeController@index');

/**
 * Membership
 */
Route::group(['as' => 'protection.'], function () {
    Route::get('membership', 'MembershipController@index')->name('membership')->middleware('protection:' . config('protection.membership.product_module_number') . ',protection.membership.failed');
    Route::get('membership/access-denied', 'MembershipController@failed')->name('membership.failed');
    Route::get('membership/clear-cache/', 'MembershipController@clearValidationCache')->name('membership.clear_validation_cache');
});
