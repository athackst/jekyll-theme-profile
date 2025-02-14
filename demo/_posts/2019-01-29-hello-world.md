---
title: "Welcome to Jekyll!"
category: examples
tags: how-to welcome
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]: https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/

Text can be **bold**, *italic*, or ~~strikethrough~~. [Links](https://github.com) should be blue with no underlines (unless hovered over).

There should be whitespace between paragraphs. There should be whitespace between paragraphs. There should be whitespace between paragraphs. There should be whitespace between paragraphs.

There should be whitespace between paragraphs. There should be whitespace between paragraphs. There should be whitespace between paragraphs. There should be whitespace between paragraphs.

> There should be no margin above this first sentence.
> Blockquotes should be a lighter gray with a gray border along the left side.
> There should be no margin below this final sentence.

# Header 1

This is a standard paragraph designed for testing purposes. Sample text flows here to simulate real content. Widgets, gadgets, and tools align perfectly with lorem bits and placeholder pieces. Testing the rhythm of prose, we sprinkle in arbitrary nouns like keyboard, coffee mug, and paperclip. The goal is simple: evaluate formatting without getting too distracted by meaning.


## Header 2

> This is a blockquote following a header. Sample text flows here to simulate real content. Widgets, gadgets, and tools align perfectly with lorem bits and placeholder pieces. Testing the rhythm of prose, we sprinkle in arbitrary nouns like keyboard, coffee mug, and paperclip. The goal is simple: evaluate formatting without getting too distracted by meaning.

### Header 3

#### Header 4

- This is an unordered list following a header.
- This is an unordered list following a header.
- This is an unordered list following a header.

##### Header 5

1. This is an ordered list following a header.
2. This is an ordered list following a header.
3. This is an ordered list following a header.

###### Header 6

| What       | Follows    |
|------------|------------|
| A table    | A header   |
| A table    | A header   |
| A table    | A header   |

---

There's a horizontal rule above and below this.

---

Here is an unordered list:

- Apples
- Bananas
- Carrots

And an ordered list:

1. First item
2. Second item
3. Third item

And an unordered task list:

- [x] Create a sample markdown document
- [ ] Add task lists to it
- [ ] Take a vacation

And a "mixed" task list:

- [x] Steal underpants
- [ ]
- [x] Profit!

And a nested list:

- Fruits
  - Apple
  - Banana
  - Cherry
  - Grape
  - Orange
- Tools
  - Hammer
  - Screwdriver
  - Wrench
  - Pliers


Definition lists can be used with HTML syntax. Definition terms are **bold and italic**.

Name
: Godzilla

Born
: 1952

Birthplace
: Japan

Color
: Green

---

Tables should have bold headings and alternating shaded rows.

| Artist        | Album                | Year |
|---------------|----------------------|------|
| David Bowie   | Scary Monsters       | 1980 |
| Prince        | Purple Rain          | 1982 |
| Beastie Boys  | License to Ill       | 1986 |
| Janet Jackson | Rhythm Nation 1814   | 1989 |

If a table is too wide, it should condense down and/or scroll horizontally.

| Item         | Description      | Color     | Size    | Material  | Weight | Price  | Rating | Stock | Notes                        |
|--------------|------------------|-----------|---------|-----------|--------|--------|--------|-------|-------------------------------|
| Chair        | Office chair      | Black     | Medium  | Wood      | 12kg   | $120   | 4.5    | Yes   | Adjustable height             |
| Table        | Dining table      | Brown     | Large   | Wood      | 30kg   | $450   | 4.7    | Yes   | Seats six                     |
| Lamp         | Desk lamp         | White     | Small   | Metal     | 2kg    | $35    | 4.2    | No    | LED light included            |
| Sofa         | Living room sofa  | Gray      | Large   | Fabric    | 45kg   | $780   | 4.8    | Yes   | Three seats                   |
| Shelf        | Wall shelf        | Oak       | Medium  | Wood      | 8kg    | $60    | 4.6    | Yes   | Easy to install               |
| Bed          | Queen bed frame   | Black     | Large   | Metal     | 40kg   | $550   | 4.9    | Yes   | Mattress not included         |
| Mirror       | Wall mirror       | Silver    | Medium  | Glass     | 5kg    | $90    | 4.3    | Yes   | Comes with mounting kit       |
| Rug          | Area rug          | Beige     | Large   | Wool      | 10kg   | $300   | 4.4    | No    | Hand-woven                    |
| Cabinet      | Storage cabinet   | White     | Medium  | Wood      | 20kg   | $250   | 4.7    | Yes   | Multiple compartments         |
| Fan          | Standing fan      | Gray      | Medium  | Plastic   | 4kg    | $80    | 4.1    | Yes   | Adjustable speed settings     |


---

Code snippets like `var foo = "bar";` can be shown inline.

Also, `this should vertically align` <code>with this</code> <code>and this</code>.

Code can also be shown in a block element.


$ a \* b = c ^ b $

$ 2^{\frac{n-1}{3}} $

$ \int_a^b f(x)\,dx. $

```cpp
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!";
  return 0;
}
// prints 'Hi, Tom' to STDOUT.
```

```python
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

p1 = Person("John", 36)

print(p1.name)
print(p1.age)
```

Inline code inside table cells should still be distinguishable.

| Language    | Code              |
|-------------|-------------------|
| JavasScript | `var foo = "bar";`|
| Ruby        | `foo = "bar"`     |

---

The `<samp>` HTML element is used to enclose inline text that represents sample (or quoted) output from a computer program. Here an example of an error message: `File not found`.

---

Small images should be shown at their actual size.

![Small Image](https://placebear.com/g/300/200)

Large images should always scale down and fit in the content container.

![Large Image](https://placebear.com/g/1200/800)

Here's a simple footnote,[^1] and here's a longer one.[^2]

[^1]: This is the first footnote.

[^2]: Here's one with multiple paragraphs and code.
     Indent paragraphs to include them in the footnote.
     `my code`
     Add as many paragraphs as you like.

`This is the final element on the page, and there should be no margin below this.`
