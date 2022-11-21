<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CountriesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'country' => $this->faker->unique()->country(),
            'distance_km' => $this->faker->unique()->numberBetween(500, 5000),
            'status' => '1'
        ];
    }
}
