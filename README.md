# oryks-code-coverage

> This GitHub Action shows Code Coverage for a given project.

[![security: bandit][bandit-image]][bandit-url]
[![Imports: isort][isort-image]][isort-url]
[![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE)
![Medium](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

This GitHub Action shows code Coverage for a given python project using Pytest Coverage. To use this action, your project must have tests written using pytest and stored in a test folder. You can read about how it was developed over at [How To Create a GitHub Action that Shows Code Coverage using Pytest](https://medium.com/@lyle-okoth/creating-a-pytest-github-action-that-shows-code-coverage-b0d11655b748)

![](oryks-coverage-run.png)

This action shows code coverage using pytest coverage. To read about how it was developed, check out [How To Create a GitHub Action that Shows Code Coverage using Pytest](https://medium.com/@lyle-okoth/creating-a-pytest-github-action-that-shows-code-coverage-b0d11655b748).

## Inputs

## `codedirectory`

**Required** The directory containing the source code. Default `"."`.

## `testdirectory`

**Required** The directory containing the tests. Default `"tests\"`.

## `pycovconfigfile`

**Optional** The pycov configuration file Default `".coveragerc"`.

## `pytestconfigfile`

**Optional** The pytest configuration file. Default `"setup.cfg"`.

## Outputs

## `testcoverage`

The Test coverage

## Example usage
```
- name: oryks code coverage action
  id: selftest
  uses: twyle/oryks-code-coverage@v1.0.0
  with:
    codedirectory: src/
    testdirectory: tests/

- name: action output
  run: |
    echo "${{ steps.selftest.outputs.testcoverage }}
```

[bandit-image]: https://img.shields.io/badge/security-bandit-yellow.svg
[bandit-url]: https://github.com/PyCQA/bandit

[isort-image]: https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336
[isort-url]: https://pycqa.github.io/isort/
