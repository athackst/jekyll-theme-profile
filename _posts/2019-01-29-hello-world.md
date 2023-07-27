---
title: "Welcome to Jekyll!"
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

This is a normal paragraph following a header. Bacon ipsum dolor sit amet t-bone doner shank drumstick, pork belly porchetta chuck sausage brisket ham hock rump pig. Chuck kielbasa leberkas, pork bresaola ham hock filet mignon cow shoulder short ribs biltong.

## Header 2

> This is a blockquote following a header. Bacon ipsum dolor sit amet t-bone doner shank drumstick, pork belly porchetta chuck sausage brisket ham hock rump pig. Chuck kielbasa leberkas, pork bresaola ham hock filet mignon cow shoulder short ribs biltong.

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

- Salt-n-Pepa
- Bel Biv DeVoe
- Kid 'N Play

And an ordered list:

1. Michael Jackson
2. Michael Bolton
3. Michael Bublé

And an unordered task list:

- [x] Create a sample markdown document
- [ ] Add task lists to it
- [ ] Take a vacation

And a "mixed" task list:

- [x] Steal underpants
- [ ]
- [x] Profit!

And a nested list:

- Jackson 5
  - Michael
  - Tito
  - Jackie
  - Marlon
  - Jermaine
- TMNT
  - Leonardo
  - Michelangelo
  - Donatello
  - Raphael

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

| Artist        | Album                | Year | Label               | Songs                                                                                                                                                              |
|---------------|----------------------|------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| David Bowie   | Scary Monsters       | 1980 | RCA Records         | It's No Game (No. 1), Up the Hill Backwards, Scary Monsters (And Super Creeps), Ashes to Ashes, Fashion, Teenage Wildlife, Scream Like a Baby, Kingdom Come, Because You're Young, It's No Game (No. 2)  |
| Prince        | Purple Rain          | 1982 | Warner Brothers Records | Let's Go Crazy, Take Me With U, The Beautiful Ones, Computer Blue, Darling Nikki, When Doves Cry, I Would Die 4 U, Baby I'm a Star, Purple Rain                                  |
| Beastie Boys  | License to Ill       | 1986 | Def Jam             | Rhymin & Stealin, The New Style, She's Crafty, Posse in Effect, Slow Ride, Girls, Fight for Your Right, No Sleep till Brooklyn, Paul Revere, "Hold It Now, Hit It", Brass Monkey, Slow and Low, Time to Get Ill  |
| Janet Jackson | Rhythm Nation 1814   | 1989 | A&M                 | Interlude: Pledge, Rhythm Nation, Interlude: T.V., State of the World, Interlude: Race, The Knowledge, Interlude: Let's Dance, Miss You Much, Interlude: Come Back, Love Will Never Do (Without You), Livin' in a World (They Didn't Make), Alright, Interlude: Hey Baby, Escapade, Interlude: No Acid, Black Cat, Lonely, Come Back to Me, Someday Is Tonight, Interlude: Livin'...In Complete Darkness |

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

![Small Image](https://placekitten.com/g/300/200/)

Large images should always scale down and fit in the content container.

![Large Image](https://placekitten.com/g/1200/800/)

Here's a simple footnote,[^1] and here's a longer one.[^2]

[^1]: This is the first footnote.

[^2]: Here's one with multiple paragraphs and code.
     Indent paragraphs to include them in the footnote.
     `my code`
     Add as many paragraphs as you like.

`This is the final element on the page, and there should be no margin below this.`
