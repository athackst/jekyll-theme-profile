---
layout: page
title: Contributing
---
Thank you for considering contributing to `jekyll-theme-profile` – your involvement is invaluable to our thriving community! This contributing page will guide you through the process of making meaningful contributions to our Jekyll theme.

## Getting Started

To begin, ensure you have a conducive development environment by installing [Visual Studio Code](https://code.visualstudio.com/) and the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension and [docker](https://docs.docker.com/). This will ensure that you have the necessary development environment in place.

Next, clone the project repository to your local machine and open it with vscode:

```bash
git clone https://github.com/username/jekyll-theme-profile.git
cd jekyll-theme-profile
code .
```

And then [develop with vscode and docker](https://www.allisonthackston.com/articles/docker-development.html#how-to-set-up-vs-code-with-docker)


This theme is setup just like a normal Jekyll site. To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to this theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When the theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` that are tracked with Git will be bundled.

## Contributing Guidelines

We appreciate various types of contributions, including bug fixes, new features, documentation updates, and code optimizations. When submitting your contributions, please adhere to the following guidelines:

- Create a new branch for your contributions: `git checkout -b feature-or-fix-branch`.
- Commit your changes with descriptive messages: `git commit -m "Add new feature XYZ"`.
- Submit pull requests from your branch to our main branch.

If you encounter any issues or bugs, please feel free to open an issue on our GitHub repository. We highly value feedback from our community and encourage open communication.

## Branching and Pull Requests

Our project follows my [git styleguide](https://www.allisonthackston.com/articles/git-style-guide.html).

## Code Review Process

Once you submit a pull request, our team will review your code. We strive to provide timely feedback and constructive suggestions to improve your contributions. Feel free to engage in discussions, and make updates based on the feedback received.

## Testing Guidelines

Before submitting your contributions, make sure to test your changes thoroughly. We have a test suite in place, and we appreciate new tests for new features or bug fixes. To run tests locally, use `bundle exec jekyll serve` and check that your changes work as expected.

## Documentation

Keeping our documentation up-to-date is vital. If you make any significant changes, please include updates to the relevant documentation.

## Code of Conduct

Contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## License and Copyright

By contributing to `jekyll-theme-profile`, you agree that your work will be subject to the project's MIT License and that you have the right to grant us the necessary permissions.

<!-- ## Acknowledgments
We extend our heartfelt gratitude to all our contributors who have played a crucial role in shaping and improving this theme. A special thanks to those who have made significant contributions, and their names are listed below.

Contributor 1
Contributor 2
... -->

<!-- ## Contact Information

If you have any questions, concerns, or need further assistance, please feel free to contact us at support@jekyll-theme-profile.com. -->
