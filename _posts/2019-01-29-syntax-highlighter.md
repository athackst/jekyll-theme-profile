---
title: "Syntax highlighter"
category: examples
---

Below are some languages and their represntative styles.

## Ruby

```ruby
def show
  puts "Outputting a very lo-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-ong lo-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-ong line"
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
```

## Php

```php
<?php
  print("Hello {$world}");
?>
```

## Java

```java
public class java {
    public static void main(String[] args) {
        System.out.println("Hello World");
    }
}
```

### HTML

```html
<html>
  <head><title>Title!</title></head>
  <body>
    <p id="foo">Hello, World!</p>
    <script type="text/javascript">var a = 1;</script>
    <style type="text/css">#foo { font-weight: bold; }</style>
  </body>
</html>
```

## Console

```console
# prints "hello, world" to the screen
~# echo Hello, World
Hello, World

# don't run this
~# rm -rf --no-preserve-root /
```

## Css

```css
body {
    font-size: 12pt;
    background: #fff url(temp.png) top left no-repeat;
}
```

## Yaml

```yaml
---
one: Mark McGwire
two: Sammy Sosa
three: Ken Griffey
```

## C++

```cpp
#include <iostream>

int main() {
    // Outputs Hello World to screen.
    std::cout << "Hello World!";
    return 0;
}
```

## Python

```python
import sys

def my_function():
  print("Hello from a function")
```

## Using liquid

### Without line numbers

{% highlight javascript %}
function some(code) { /*goes here*/ }
let x = 21;
{% endhighlight %}


### With line numbers

{% highlight javascript linenos %}
function some(code) { /*goes here*/ }
let x = 21;
{% endhighlight %}
