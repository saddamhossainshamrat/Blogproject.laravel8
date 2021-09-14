<?php

namespace Database\Factories;
use Illuminate\Support\Str;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'slug' => Str::slug($this->faker->sentence()),
            'image' => $this->faker->imageUrl(600,400),
            'description' => $this->faker->text(400),
            'category_id' => \App\Models\Category::factory(),
            'user_id' => 1, 
        ];
    }
}
