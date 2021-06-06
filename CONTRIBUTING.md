# Contributing to KubePreset

:+1::tada: First off, thanks for taking the time to contribute!
:tada::+1:

You can look at the issues [with help wanted label][help-wanted] for items that
you can work on.

If you need help, please feel free to [reach out to our discussion
group!][group]

When contributing to this repository, please first discuss the change you wish
to make via issue, email, or any other method with the owners of this repository
before making a change.  Small pull requests are easy to review and merge.  So,
please send small pull requests.

Please note we have a [code of conduct][conduct], please follow it in all your
interactions with the project.

Contributions to this project should conform to the [Developer Certificate of
Origin][dco].  See the [next section](#sign-your-work) for more details.

The [Development](#development) section has the necessary instructions to set up
the development environment and running tests.  The [KubePreset Wiki][wiki] has
additional information for contributors.

Remember, when you send pull requests:

1. Write tests.
2. Write a [good commit message][commit-message].

## Sign Your Work

Contributions to this project should conform to the [Developer Certificate of
Origin][dco].  You need to sign-off your git commits before sending the pull
requests.  The sign-off is a single line of text at the end of the commit
message.  The signature consists of your official name and email address.  These
two details should match with the name and email address used in the Git commit.
All your commits needs to be signed.  Your signature certifies that you wrote
the patch or otherwise have the right to contribute the material.  The rules are
pretty simple, if you can certify the below (from
[developercertificate.org][dco]):

```
Developer Certificate of Origin
Version 1.1

Copyright (C) 2004, 2006 The Linux Foundation and its contributors.
1 Letterman Drive
Suite D4700
San Francisco, CA, 94129

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.


Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```

Then you just add a line to every git commit message:

    Signed-off-by: Joe Smith <joe.smith@example.com>

Use your real name (sorry, no pseudonyms or anonymous contributions.)

If you set your `user.name` and `user.email` git configs, you can sign your
commit automatically with `git commit -s`.

Note: If your git config information is set properly then viewing the `git log`
information for your commit will look something like this:

```
Author: Joe Smith <joe.smith@example.com>
Date:   Thu Feb 2 11:41:15 2018 -0800

    Update README

    Signed-off-by: Joe Smith <joe.smith@example.com>
```

Notice the `Author` and `Signed-off-by` lines match. If they don't
your PR will be rejected by the automated DCO check.

## Pull Request Workflow

- Fork the repository and clone it your work directory
- Create a topic branch from where you want to base your work
  - This is usually the `main` branch.
  - Only target release branches if you are certain your fix must be on that
    branch.
  - To quickly create a topic branch based on `main`; ``git checkout -b
    my-bug-fix upstream/main`` (Here `upstream` is alias for the remote repo)
- Make commits of logical units
- Make sure your commit messages are in [the proper format][commit-message].
  Also include any related GitHub issue references in the commit message.
- Push your changes to a topic branch in your fork of the repository
- Submit a pull request

Example:

```shell
git remote add upstream https://github.com/kubepreset/kubepreset.git
git fetch upstream
git checkout -b my-bug-fix upstream/main
git commit -a
git push origin my-bug-fix
```

### Staying in sync with upstream

When your branch gets out of sync with the `upstream/main` branch, use the
following to update:

``` shell
git checkout my-bug-fix
git fetch upstream
git rebase upstream/main
git push --force-with-lease origin my-bug-fix
```

### Updating pull requests

If your PR fails to pass CI or needs changes based on code review, you'll most
likely want to squash these changes into existing commits.

If your pull request contains a single commit or your changes are related to the
most recent commit, you can simply amend the commit.

```
git add .
git commit --amend
git push --force-with-lease origin my-bug-fix
```

If you need to squash changes into an earlier commit, you can use:

```
git add .
git commit --fixup <commit>
git rebase -i --autosquash main
git push --force-with-lease origin my-bug-fix
```

Please add a comment in the PR indicating your new changes are ready to review.

## Development

We recommend using GNU/Linux systems for the development of KubePreset. This
project requires the [Go version 1.16][go] or above installed in your
system. You also should have [make][make] and [GCC][gcc] installed in your
system.

To build the project:

    make

To run the tests:

    make test

When running tests, to see `INFO` level logging, set this environment variable:

    export LOG_LEVEL=INFO
    make test

To see `DEBUG` level logging, set the value like this:

    export LOG_LEVEL=DEBUG
    make test

To see `TRACE` level logging, set the value like this:

    export LOG_LEVEL=TRACE
    make test

If `LOG_LEVEL` is not set, the default level is going be at `TRACE` level.

[help-wanted]: https://github.com/kubepreset/kubepreset/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[conduct]: https://github.com/kubepreset/kubepreset/blob/main/CODE_OF_CONDUCT.md
[wiki]: https://github.com/kubepreset/kubepreset/wiki
[dco]: http://developercertificate.org
[group]: https://groups.google.com/g/kubepreset
[readme]: https://github.com/kubepreset/kubepreset/blob/main/README.md
[commit-message]: https://chris.beams.io/posts/git-commit/
[go]: https://golang.org
[make]: https://en.wikipedia.org/wiki/Make_(software)
[gcc]: https://gcc.gnu.org
