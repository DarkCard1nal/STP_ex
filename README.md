# STP_ex

_Created for the course "Stack of programming technologies" V. N. Karazin Kharkiv National University_

Ruby 3.3.5 Exam Ticket №9: method_missing, File, Observer, Marshal, PrimeChecker.

---

#### Overview

This project contains solutions for **Exam Ticket №9**, focusing on Ruby programming topics, concepts, and practical implementation. The work includes both theoretical explanations and practical implementations. Below is a summary of the covered tasks and the implementation details.

---

### task1. `method_missing` and Dynamic Method Calls

The `method_missing` method in Ruby is part of its metaprogramming capabilities. It is triggered whenever a non-existent method is called on an object. This allows for dynamic handling of undefined methods.

**Example**:  
The `DynamicMethods` class dynamically handles method calls that start with `say_` by interpreting the suffix and responding accordingly.

---

### task2. File Handling in Ruby

The `File` object in Ruby provides methods to read, write, and manipulate files efficiently. The implementation details include using modes (`r`, `w`, `a`, etc.) for file operations and ensuring proper resource management using blocks or explicit `close` calls.

---

### task3. Observer Design Pattern

Ruby's `Observer` pattern enables an object (the subject) to notify other objects (observers) about state changes. This was demonstrated using the `Observable` module as well as a custom implementation.

---

### task4. Marshal for Serialization

The Ruby `Marshal` module allows for object serialization and deserialization. This project demonstrates serializing data to a file and restoring it, emphasizing its usefulness for caching, state persistence, and data transfer.

---

### task5. PrimeChecker Module (Practical Task)

#### Description

The **`PrimeChecker` module** is implemented to check whether a given number is prime. This is achieved with an optimized approach, reducing the iteration range to the square root of the number.

#### Key Features:

- **Performance Optimization**: Numbers are checked for divisors only up to their square root.
- **Static Design**: The module uses a static method (`self.prime?`) to eliminate the need for object instantiation.

#### Example Usage example.rb.
