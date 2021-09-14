<?php

 use Illuminate\Support\Facades\Route;


 Auth::routes();

 Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Front End Routes
 Route::get('/', [App\Http\Controllers\FrontEndController::class, 'home'])->name('website');

 Route::get('/about', [App\Http\Controllers\FrontEndController::class, 'about'])->name('website.about');

 Route::get('/category/{slug}', [App\Http\Controllers\FrontEndController::class, 'category'])->name('website.category');

 Route::get('/tag/{slug}', [App\Http\Controllers\FrontEndController::class, 'tag'])->name('website.tag');

 Route::get('/contact', [App\Http\Controllers\FrontEndController::class,'contact'])->name('website.contact');

 Route::get('/post/{slug}', [App\Http\Controllers\FrontEndController::class, 'post'])->name('website.post');
 

 Route::post('/contact', [App\Http\Controllers\FrontEndController::class,'send_message'])->name('website.contact');


 // Admin Panel Routes 

   Route::group(['prefix' => 'admin', 'middleware' => ['auth']], function () {
   Route::get('/dashboard', [App\Http\Controllers\DashboardController::class,'index'])->name('dashboard');
  
  Route::resource('category', 'CategoryController');
  Route::resource('tag', 'TagController');
  Route::resource('post', 'PostController');
  Route::resource('user', 'UserController');
  Route::get('/profile', [App\Http\Controllers\UserController::class, 'profile'])->name('user.profile');
  Route::post('/profile', [App\Http\Controllers\UserController::class, 'profile_update'])->name('user.profile.update');

  //settings
  Route::get('setting', [App\Http\Controllers\SettingController::class, 'edit'])->name('setting.index');
  Route::post('setting', [App\Http\Controllers\SettingController::class, 'update'])->name('setting.update');

  //contact message

Route::get('/contact', [App\Http\Controllers\ContactController::class,'index'])->name('contact.index');
Route::get('/contact/show/{id}', [App\Http\Controllers\ContactController::class,'show'])->name('contact.show');
Route::delete('/contact/delete/{id}', [App\Http\Controllers\ContactController::class, 'destroy'])->name('contact.destroy');
});







//Route::get('/test', function(){

//$posts = App\Models\Post::all();
   //$id = 1;

  // foreach($posts as $post){
    // $post->image = "https://picsum.photos/id/".$id."/640/480";
     // $post->save();
     // $id++;
 //  }
  // return $posts;
//});
    
