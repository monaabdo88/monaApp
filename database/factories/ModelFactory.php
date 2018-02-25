<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->safeEmail,
        'password' => bcrypt(str_random(10)),
        'is_active' => 1,
        'role_id' => $faker->numberBetween(1,3),
        'remember_token' => str_random(10),
    ];
});
$factory->define(App\Post::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence(7,20),
        'body' => $faker->paragraph(rand(10,25),true),
        'photo_id' => 1,
        'user_id' => 1,
        'category_id' => $faker->numberBetween(1,10),
        'slug' => $faker->slug()
    ];
});
$factory->define(App\Category::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->randomElement(['Javascript','Bootstrap','Jquery','Css','Css3','Laravel','Nodejs','AngularJs','Vuejs','Php'])
    ];
});
$factory->define(App\Role::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->randomElement(['admin','author','user'])
    ];
});
$factory->define(App\Photo::class, function (Faker\Generator $faker) {
    return [
        'file' => 'placeholder.jpg'
    ];
});
$factory->define(App\Comment::class, function (Faker\Generator $faker) {
    return [
        'post_id' => $faker->numberBetween(1,20),
        'is_active' => 1,
        'author' => $faker->name,
        'email' => $faker->safeEmail,
        'comment' => $faker->paragraph(1,true),
        'photo' => 'placeholder.jpg'
    ];
});
$factory->define(App\CommentReplay::class, function (Faker\Generator $faker) {
    return [
        'comment_id' => $faker->numberBetween(1,20),
        'is_active' => 1,
        'author' => $faker->name,
        'email' => $faker->safeEmail,
        'comment' => $faker->paragraph(1,true),
        'photo' => 'placeholder.jpg'
    ];
});

