use bevy::prelude::*;

// Person component
#[derive(Component)]
struct Person; // (unit struct)

// Name Component
#[derive(Component)]
struct Name(String); // (tuple struct)

fn main() {
    App::new()
        .add_systems(Startup, add_people)
        .add_systems(Update, (hello_world, greet_people))
        .run();
}

fn hello_world() {
    println!("Chess Engine");
}

// Startup system
// Similar to other systems but runs once at startup
fn add_people(mut commands: Commands) {
    commands.spawn((Person, Name("Alice".to_string())));
    commands.spawn((Person, Name("Bob in wonderland".to_string())));
    commands.spawn((Person, Name("Eliane Proto".to_string())));
}

// A query system that greets people in our world
fn greet_people(query: Query<&Name, With<Person>>) {
    for name in &query {
        let Name(name_str) = name;
        println!("Hello, {}👋", name_str)
    }
}
