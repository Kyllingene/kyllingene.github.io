# How to Replace Inheritance in Rust

Many people come to Rust from other programming languages, such as Java or C++.
In such languages, you become accustomed to using *inheritance*. An example is
this:

```cpp
class Animal {
    public:
        std::string name;
        int size;
        std::string *noises;

    std::string randomNoise() {
        return this->noises[0];
    }

    int sizeOfBaby();
};

class Cow: Animal {
    std::string breed;

    int sizeOfBaby() {
        return 2;
    }
};
```

In this example, we create a base `Animal` class from which we derive `Cow`.
This is probably familiar to you, and should be a good starting point to
demonstrate how Rust does things differently.

*Note:* I find that many people don't grok a technical discussion of the
differences or how you would do things, so I won't be getting into the weeds
over why things are how they are, or why you should prefer composition over
inheritance. This will strictly focus on a practical example of translating one
to the other.

There are two main ways you can accomplish different types with a unified
interface: traits, and enums.

## Method 1: Traits

To start, here's a reproduction of `Animal` in Rust:

```rust
trait Animal {
    fn name(&self) -> String;
    fn size(&self) -> u32;
    fn noises(&self) -> Vec<String>;

    fn random_noise(&self) -> String {
        return self.noises()[0].clone();
    }

    fn size_of_baby(&self) -> u32;
}
```

Wait, what's going on here? Why all these functions instead of fields?

Since Rust uses composition rather than inheritance, there's no way to specify a
field on a trait. There simply isn't. So in this case, you have to specify a
bunch of getter methods. If you want to support setting the values as well, you
have to provide those.

Now, here's a translation of `Cow`:

```rust
struct Cow {
    name: String,
    size: u32,
    noises: Vec<String>,
    breed: String,
}

impl Animal for Cow {
    fn name(&self) -> String { return self.name.clone(); }
    fn size(&self) -> u32 { return self.size; }
    fn noises(&self) -> Vec<String> { return self.noises.clone(); }
    fn size_of_baby(&self) -> u32 { return 2; }
}
```

Note how, just like in C++, you can have default implementations. Since
`random_noise` is implemented in the trait, you don't have to implement it on
`Cow`. You could, if you wanted, override it, but you don't have to.

This method is the closest to inheritance, but it has several flaws:
- You often end up writing tons of getter/setter methods
- It forces you to work with Rust's powerful but intricate type system
    - This can be confusing and verbose, especially for beginners
- It fights ownership, leading to ugly types like `Box<dyn Animal>`

However, this is the only solution that allows other users to define and use
their own kinds of `Animal`s. This is what traits are for, and is one of the
only times when you should use them. For example, a UI framework may expose a
`UiElement` trait so that users can define their own elements.

## Method 2: Enums

This is usually what you want when you think of inheritance. For example, most
OOP languages structure things like GUI elements as a tree of inherited classes.
In Rust, those often get defined as one or more enums, for good reason.  Here's
the `Animal` example in enum form:

```rust
enum Animal {
    Cow {
        name: String,
        size: u32,
        noises: Vec<String>,
        breed: String,
    }
}

impl Animal {
    fn random_noise(&self) -> String {
        match self {
            Self::Cow { noises, .. } => return noises[0].clone(),
        }
    }

    fn size_of_baby(&self) -> u32 {
        match self {
            Self::Cow { .. } => return 2,
        }
    }
}
```

Here, we define an enum called `Animal`. Inside `Animal` we have a `Cow`
variant holding all the necessary information. We then define some methods on
it, using match statements to tell which kind of `Animal` we're dealing with.

While not perfect, this method has many benefits.
- It avoids the ugly type system issues
- It allows you to see exactly what kind of `Animal` you have
    - Therefore, you can get more information out of it

However, you still haven't fixed the getter/setter issue from the first method.
With both, you end up rewriting boilerplate code just to get or change a field.

## Bonus method 3: Struct / Enum

The above two will often suit your use case, but sometimes you need your
solution to be more robust and expandable. Nesting an enum with kind-specific
details inside of a struct may be just what you want:

```rust
struct Animal {
    kind: AnimalKind,
    name: String,
    size: u32,
    noises: Vec<String>,
}

impl Animal {
    fn random_noise(&self) -> String {
        return self.noises[0].clone();
    }

    fn size_of_baby(&self) -> u32 {
        return self.kind.size_of_baby();
    }
}

enum AnimalKind {
    Cow { breed: String }
}

impl AnimalKind {
    fn size_of_baby(&self) -> u32 {
        match self {
            Self::Cow { .. } => return 2,
        }
    }
}
```

This is the most flexible solution:
- It provides all the information from the original C++ implementation of
  `Animal` as readily-accessible fields
- You can pass around owned `Animal`s with ease
- You can extract just the animal-specific data and pass it along
- You circumvent all the inconveniences around traits
- You can easily extend it to add more kinds of animal

## Summary

Traits are very helpful when you need to allow a third party to define their own
types based off of your work. However, due to type system intricacies, it's
usually far easier to use enums. Additionally, you can put kind-specific details
in an enum, then put *that* in a struct, which is the most robust solution.

I chose not to dive deeply into traits for this because that's not usually what
you actually want. Beginners often try to replace inheritance with traits
because... well, that's the closest thing. But really, Rust enums are far more
powerful, and usually what you want.

## Useful links

- [Composition over Inheritance -
  Wikipedia](https://wikipedia.org/wiki/Composition_over_inheritance)
    - A comparison of composition and inheritance
- [Inheritance with
  Traits](https://riptutorial.com/rust/example/22917/inheritance-with-traits)
    - A short tutorial on how to use traits properly
- [How to implement inheritance the Rust
  way?](https://users.rust-lang.org/t/how-to-implement-inheritance-the-rust-way/71373/4)
    - A forum question about using traits that shows some of the issues you may
      run into

