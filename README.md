# spinim
 Spintax for Nim & Python!  Based on spintax for python by AceLewis.

### Key differences

`spinim` is roughly 43% faster than the `spintax` module implemented in pure `python`.

# spintax
A Nim/Python module for parsing spintax; unlike other modules, this also allows nested spintax.

# What is spintax
Spintax (also known as spin syntax) is a way to create random strings that have the same or similar meaning.

Spintax is very useful as it can be used in programs such as chat bots or video game character speach, it allows the dialog to not sound so repetitive and robotic. Spintax also has great applications in voice assistants such as in Amazon's Alexa, you can easily make skills (apps for the Alexa) that respond without saying the exact same thing every time.

There are examples of spintax in use in the examples folder

# The syntax
Spintax replaces braces (also known as curly brackets, {}) containing text with a random predefined string. The random string is defined withing the braces by using a pipe | as a seperator.

##### Simple example:

    "{Hey|Hello|Hi} this is {spin syntax|spintax}{.|!|}"

##### Can produce:
* Hey this is spintax.
* Hi this is spin syntax
* Hello this is spintax
* Hi this is spintax!

##### Can produce:

 - Hi this is spintax!

   To use spintax enclose {your|words} in braces and use the | to separate them

 - Hi, this is spin syntax

   To use this module enclose {your|words} in those brackets and use a | to separate them


 - Hello this is spintax.

   To use spintax enclose {your|words} in those brackets and use a pipe (|) to separate them

##### Example of Nested Spintax:

       "This is nested {{s|S}pintax|spin syntax}"

##### Can produce:

  - This is nested Spintax
  - This is nested spin syntax
  - This is nested spintax

# Installation

For python, you will have to compile the pyd for your system using nim/nimpy 

https://github.com/yglukhov/nimpy

I am working on a nimble release for nim users.  For now it should be easy enough to copy into a project.  Sorry!

# How to use this module

This module can be used to spin Spintax easily.

Python

``` Python
import spinim
print(spinim.spin("{Simple|Easy} {example|demonstration}"))
```

Nim

```Nim
import spinim
echo spin("{Simple|Easy} {example|demonstration}")
```

### The Spin Function:

##### Inputs:

* string: The sting to parse, make sure it is a literal string if you use \'s within the string.
